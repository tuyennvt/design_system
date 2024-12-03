import 'dart:convert';
import 'dart:io';

import '../utils.dart';
import 'color_token_parser.dart';
import 'number_token_parser.dart';

class DimensionGenerator {
  DimensionGenerator({
    required this.inputFile,
    required this.outputFilePath,
  }) {
    _kvDesignSystemRows = <String>{};
  }

  final File inputFile;
  final String outputFilePath;

  late final Set<String> _kvDesignSystemRows;

  Future<String> generate() async {
    final fileContent = await inputFile.readAsString();
    final Map<String, dynamic> json = jsonDecode(fileContent);

    final kvDesignTokenContent = StringBuffer();

    final abstractDimensionClassNames = <String>{};
    for (final key in json.keys) {
      final abstractDimensionClassName = _getAbstractDimensionClassName(key);
      if (!abstractDimensionClassNames.contains(abstractDimensionClassName)) {
        abstractDimensionClassNames.add(abstractDimensionClassName);
        final abstractDimensionContent =
            _getAbstractDimensionContent(json[key]);
        await _createAbstractDimension(
          name: abstractDimensionClassName,
          fileName: abstractDimensionClassName.toSnakeCase,
          content: abstractDimensionContent,
        );
      }
    }

    for (final element in abstractDimensionClassNames) {
      kvDesignTokenContent
          .writeln('\tlate final $element ${element.toFirstLowerCase};');
    }

    final dimensionClassNames = <String>[];
    for (final key in json.keys) {
      final dimensionClassName = _getDimensionClassName(key);
      dimensionClassNames.add(dimensionClassName);
      final dimensionContent = _getDimensionContent(
        json[key],
        abstractDimensionClassNames: abstractDimensionClassNames,
      );
      await _createDimension(
        name: dimensionClassName,
        abstractDimensionClassNames: abstractDimensionClassNames,
        fileName: dimensionClassName.toSnakeCase,
        content: dimensionContent,
      );
      final abstractDimensionClassName = _getAbstractDimensionClassName(key);
      kvDesignTokenContent.writeln(
        _getKvDesignTokenContent(
          json[key],
          abstractDimensionClassName: abstractDimensionClassName,
          abstractDimensionClassNames: abstractDimensionClassNames,
        ),
      );
    }

    await _createExportFile(
      abstractDimensionNames: abstractDimensionClassNames,
      dimensionNames: dimensionClassNames,
    );
    return kvDesignTokenContent.toString();
  }

  String _getAbstractDimensionClassName(String key) =>
      key.standardize.split('.').first;

  String _getAbstractDimensionContent(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    _parseTokenForAbstractDimension(json, buffer);
    return buffer.toString();
  }

  void _parseTokenForAbstractDimension(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    String parentKey = '',
  }) {
    json.forEach((jsonKey, jsonValue) {
      final currentKey = parentKey.isEmpty ? jsonKey : '$parentKey.$jsonKey';
      if (jsonValue.containsKey('type') && jsonValue.containsKey('value')) {
        final type = jsonValue['type'];
        final value = jsonValue['value'];
        switch (type) {
          case 'color':
            final colorTokenParser = ColorTokenParser(currentKey, value);
            buffer.writeln(colorTokenParser.parse(parseForAbstract: true));
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(currentKey, value);
            buffer.writeln(numberTokenParser.parse(parseForAbstract: true));
            break;
          default:
            print('$type is not supported');
            break;
        }
      } else {
        _parseTokenForAbstractDimension(jsonValue, buffer,
            parentKey: currentKey);
      }
    });
  }

  Future<void> _createAbstractDimension({
    required String name,
    required String fileName,
    required String content,
  }) async {
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln();
    buffer.writeln('abstract class $name {');
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('$outputFilePath$fileName.dart');
    await file.writeAsString(buffer.toString());
  }

  String _getDimensionClassName(String key) =>
      key.standardize.replaceAll('.', '');

  String _getDimensionContent(
    Map<String, dynamic> json, {
    required Set<String> abstractDimensionClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForDimension(
      json,
      buffer,
      abstractDimensionClassNames: abstractDimensionClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForDimension(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    required Set<String> abstractDimensionClassNames,
    String parentKey = '',
  }) {
    json.forEach((jsonKey, jsonValue) {
      final currentKey = parentKey.isEmpty ? jsonKey : '$parentKey.$jsonKey';
      if (jsonValue.containsKey('type') && jsonValue.containsKey('value')) {
        final type = jsonValue['type'];
        final value = jsonValue['value'];
        switch (type) {
          case 'color':
            final colorTokenParser = ColorTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractDimensionClassNames,
            );
            buffer.writeln(colorTokenParser.parse(includeOverride: true));
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractDimensionClassNames,
            );
            buffer.writeln(numberTokenParser.parse(includeOverride: true));
            break;
          default:
            print('$type is not supported');
            break;
        }
      } else {
        _parseTokenForDimension(
          jsonValue,
          buffer,
          parentKey: currentKey,
          abstractDimensionClassNames: abstractDimensionClassNames,
        );
      }
    });
  }

  Future<void> _createDimension({
    required String name,
    required Set<String> abstractDimensionClassNames,
    required String fileName,
    required String content,
  }) async {
    var abstractDimensionClassName = '';
    for (final element in abstractDimensionClassNames) {
      if (name.startsWith(element)) {
        abstractDimensionClassName = element;
        break;
      }
    }
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '../kv_design_system.dart';");
    buffer.writeln();
    buffer.writeln('class $name implements $abstractDimensionClassName {');
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('$outputFilePath$fileName.dart');
    await file.writeAsString(buffer.toString());
  }

  Future<void> _createExportFile({
    required Set<String> abstractDimensionNames,
    required List<String> dimensionNames,
  }) async {
    final buffer = StringBuffer();
    for (final abstractDimensionName in abstractDimensionNames) {
      buffer.writeln("export '${abstractDimensionName.toSnakeCase}.dart';");
    }
    for (final dimensionName in dimensionNames) {
      buffer.writeln("export '${dimensionName.toSnakeCase}.dart';");
    }
    final file = File('${outputFilePath}export_dimension.dart');
    await file.writeAsString(buffer.toString());
  }

  String _getKvDesignTokenContent(
    Map<String, dynamic> json, {
    String abstractDimensionClassName = '',
    required Set<String> abstractDimensionClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForKvDesignToken(
      json,
      buffer,
      abstractDimensionClassName: abstractDimensionClassName,
      abstractDimensionClassNames: abstractDimensionClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForKvDesignToken(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    String abstractDimensionClassName = '',
    required Set<String> abstractDimensionClassNames,
    String parentKey = '',
  }) {
    json.forEach((jsonKey, jsonValue) {
      final currentKey = parentKey.isEmpty ? jsonKey : '$parentKey.$jsonKey';
      if (jsonValue.containsKey('type') && jsonValue.containsKey('value')) {
        final type = jsonValue['type'];
        final value = jsonValue['value'];
        switch (type) {
          case 'color':
            final colorTokenParser = ColorTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractDimensionClassNames,
            );
            final result = colorTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractDimensionClassName.toFirstLowerCase,
            );
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractDimensionClassNames,
            );
            final result = numberTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractDimensionClassName.toFirstLowerCase,
            );
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          default:
            print('$type is not supported');
            break;
        }
      } else {
        _parseTokenForKvDesignToken(
          jsonValue,
          buffer,
          abstractDimensionClassName: abstractDimensionClassName,
          abstractDimensionClassNames: abstractDimensionClassNames,
          parentKey: currentKey,
        );
      }
    });
  }
}
