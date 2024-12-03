import 'dart:convert';
import 'dart:io';

import '../utils.dart';
import 'color_token_parser.dart';
import 'number_token_parser.dart';

class TextStyleGenerator {
  TextStyleGenerator({
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

    final abstractTextStyleClassNames = <String>{};
    for (final key in json.keys) {
      final abstractTextStyleClassName = _getAbstractTextStyleClassName(key);
      if (!abstractTextStyleClassNames.contains(abstractTextStyleClassName)) {
        abstractTextStyleClassNames.add(abstractTextStyleClassName);
        final abstractTextStyleContent =
            _getAbstractTextStyleContent(json[key]);
        await _createAbstractTextStyle(
          name: abstractTextStyleClassName,
          fileName: abstractTextStyleClassName.toSnakeCase,
          content: abstractTextStyleContent,
        );
      }
    }

    for (final element in abstractTextStyleClassNames) {
      kvDesignTokenContent
          .writeln('\tlate final $element ${element.toFirstLowerCase};');
    }

    final textStyleClassNames = <String>[];
    for (final key in json.keys) {
      final textStyleClassName = _getTextStyleClassName(key);
      textStyleClassNames.add(textStyleClassName);
      final textStyleContent = _getTextStyleContent(
        json[key],
        abstractTextStyleClassNames: abstractTextStyleClassNames,
      );
      await _createTextStyle(
        name: textStyleClassName,
        abstractTextStyleClassNames: abstractTextStyleClassNames,
        fileName: textStyleClassName.toSnakeCase,
        content: textStyleContent,
      );
      final abstractTextStyleClassName = _getAbstractTextStyleClassName(key);
      kvDesignTokenContent.writeln(
        _getKvDesignTokenContent(
          json[key],
          abstractTextStyleClassName: abstractTextStyleClassName,
          abstractTextStyleClassNames: abstractTextStyleClassNames,
        ),
      );
    }

    await _createExportFile(
      abstractTextStyleNames: abstractTextStyleClassNames,
      textStyleNames: textStyleClassNames,
    );
    return kvDesignTokenContent.toString();
  }

  String _getAbstractTextStyleClassName(String key) =>
      key.standardize.split('.').first;

  String _getAbstractTextStyleContent(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    _parseTokenForAbstractTextStyle(json, buffer);
    return buffer.toString();
  }

  void _parseTokenForAbstractTextStyle(
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
        _parseTokenForAbstractTextStyle(
          jsonValue,
          buffer,
          parentKey: currentKey,
        );
      }
    });
  }

  Future<void> _createAbstractTextStyle({
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

  String _getTextStyleClassName(String key) =>
      key.standardize.replaceAll('.', '');

  String _getTextStyleContent(
    Map<String, dynamic> json, {
    required Set<String> abstractTextStyleClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForTextStyle(
      json,
      buffer,
      abstractTextStyleClassNames: abstractTextStyleClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForTextStyle(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    required Set<String> abstractTextStyleClassNames,
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
              abstractClassNames: abstractTextStyleClassNames,
            );
            buffer.writeln(
              colorTokenParser.parse(
                includeOverride: true,
                overridePrefix: 'KvDesignSystem().',
              ),
            );
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractTextStyleClassNames,
            );
            buffer.writeln(
              numberTokenParser.parse(
                includeOverride: true,
                overridePrefix: 'KvDesignSystem().',
              ),
            );
            break;
          default:
            print('$type is not supported');
            break;
        }
      } else {
        _parseTokenForTextStyle(
          jsonValue,
          buffer,
          parentKey: currentKey,
          abstractTextStyleClassNames: abstractTextStyleClassNames,
        );
      }
    });
  }

  Future<void> _createTextStyle({
    required String name,
    required Set<String> abstractTextStyleClassNames,
    required String fileName,
    required String content,
  }) async {
    var abstractTextStyleClassName = '';
    for (final element in abstractTextStyleClassNames) {
      if (name.startsWith(element)) {
        abstractTextStyleClassName = element;
        break;
      }
    }
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '../kv_design_system.dart';");
    buffer.writeln();
    buffer.writeln('class $name implements $abstractTextStyleClassName {');
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('$outputFilePath$fileName.dart');
    await file.writeAsString(buffer.toString());
  }

  Future<void> _createExportFile({
    required Set<String> abstractTextStyleNames,
    required List<String> textStyleNames,
  }) async {
    final buffer = StringBuffer();
    for (final abstractTextStyleName in abstractTextStyleNames) {
      buffer.writeln("export '${abstractTextStyleName.toSnakeCase}.dart';");
    }
    for (final textStyleName in textStyleNames) {
      buffer.writeln("export '${textStyleName.toSnakeCase}.dart';");
    }
    final file = File('${outputFilePath}export_text_style.dart');
    await file.writeAsString(buffer.toString());
  }

  String _getKvDesignTokenContent(
    Map<String, dynamic> json, {
    String abstractTextStyleClassName = '',
    required Set<String> abstractTextStyleClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForKvDesignToken(
      json,
      buffer,
      abstractTextStyleClassName: abstractTextStyleClassName,
      abstractTextStyleClassNames: abstractTextStyleClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForKvDesignToken(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    String abstractTextStyleClassName = '',
    required Set<String> abstractTextStyleClassNames,
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
              abstractClassNames: abstractTextStyleClassNames,
            );
            final result = colorTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractTextStyleClassName.toFirstLowerCase,
            );
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractTextStyleClassNames,
            );
            final result = numberTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractTextStyleClassName.toFirstLowerCase,
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
          abstractTextStyleClassName: abstractTextStyleClassName,
          abstractTextStyleClassNames: abstractTextStyleClassNames,
          parentKey: currentKey,
        );
      }
    });
  }
}
