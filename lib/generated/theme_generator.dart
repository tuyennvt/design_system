import 'dart:convert';
import 'dart:io';

import '../utils.dart';
import 'color_token_parser.dart';
import 'number_token_parser.dart';

class ThemeGenerator {
  ThemeGenerator({
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

    final abstractThemeClassNames = <String>{};
    for (final key in json.keys) {
      final abstractThemeClassName = _getAbstractThemeClassName(key);
      if (!abstractThemeClassNames.contains(abstractThemeClassName)) {
        abstractThemeClassNames.add(abstractThemeClassName);
        final abstractThemeContent = _getAbstractThemeContent(json[key]);
        await _createAbstractTheme(
          name: abstractThemeClassName,
          fileName: abstractThemeClassName.toSnakeCase,
          content: abstractThemeContent,
        );
      }
    }

    for (final element in abstractThemeClassNames) {
      kvDesignTokenContent
          .writeln('\tlate final $element ${element.toFirstLowerCase};');
    }

    final themeClassNames = <String>[];
    for (final key in json.keys) {
      final themeClassName = _getThemeClassName(key);
      themeClassNames.add(themeClassName);
      final themeContent = _getThemeContent(
        json[key],
        abstractThemeClassNames: abstractThemeClassNames,
      );
      await _createTheme(
        name: themeClassName,
        abstractThemeClassNames: abstractThemeClassNames,
        fileName: themeClassName.toSnakeCase,
        content: themeContent,
      );
      kvDesignTokenContent.writeln(
        _getKvDesignTokenContent(
          json[key],
          abstractThemeClassNames: abstractThemeClassNames,
        ),
      );
    }

    await _createExportFile(
      abstractThemeNames: abstractThemeClassNames,
      themeNames: themeClassNames,
    );
    return kvDesignTokenContent.toString();
  }

  String _getAbstractThemeClassName(String key) =>
      key.standardize.split('.').first;

  String _getAbstractThemeContent(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    _parseTokenForAbstractTheme(json, buffer);
    return buffer.toString();
  }

  void _parseTokenForAbstractTheme(
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
        _parseTokenForAbstractTheme(jsonValue, buffer, parentKey: currentKey);
      }
    });
  }

  Future<void> _createAbstractTheme({
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

  String _getThemeClassName(String key) => key.standardize.replaceAll('.', '');

  String _getThemeContent(
    Map<String, dynamic> json, {
    required Set<String> abstractThemeClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForTheme(
      json,
      buffer,
      abstractThemeClassNames: abstractThemeClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForTheme(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    required Set<String> abstractThemeClassNames,
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
              abstractClassNames: abstractThemeClassNames,
            );
            buffer.writeln(colorTokenParser.parse(includeOverride: true));
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractThemeClassNames,
            );
            buffer.writeln(numberTokenParser.parse(includeOverride: true));
            break;
          default:
            print('$type is not supported');
            break;
        }
      } else {
        _parseTokenForTheme(
          jsonValue,
          buffer,
          parentKey: currentKey,
          abstractThemeClassNames: abstractThemeClassNames,
        );
      }
    });
  }

  Future<void> _createTheme({
    required String name,
    required Set<String> abstractThemeClassNames,
    required String fileName,
    required String content,
  }) async {
    var abstractThemeClassName = '';
    for (final element in abstractThemeClassNames) {
      if (name.startsWith(element)) {
        abstractThemeClassName = element;
        break;
      }
    }
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '../kv_design_system.dart';");
    buffer.writeln();
    buffer.writeln('class $name implements $abstractThemeClassName {');
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('$outputFilePath$fileName.dart');
    await file.writeAsString(buffer.toString());
  }

  Future<void> _createExportFile({
    required Set<String> abstractThemeNames,
    required List<String> themeNames,
  }) async {
    final buffer = StringBuffer();
    for (final abstractThemeName in abstractThemeNames) {
      buffer.writeln("export '${abstractThemeName.toSnakeCase}.dart';");
    }
    for (final themeName in themeNames) {
      buffer.writeln("export '${themeName.toSnakeCase}.dart';");
    }
    final file = File('${outputFilePath}export_theme.dart');
    await file.writeAsString(buffer.toString());
  }

  String _getKvDesignTokenContent(
    Map<String, dynamic> json, {
    required Set<String> abstractThemeClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForKvDesignToken(
      json,
      buffer,
      abstractThemeClassNames: abstractThemeClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForKvDesignToken(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    required Set<String> abstractThemeClassNames,
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
              abstractClassNames: abstractThemeClassNames,
            );
            final result = colorTokenParser.parse(parseForKvDesignSystem: true);
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractThemeClassNames,
            );
            final result =
                numberTokenParser.parse(parseForKvDesignSystem: true);
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
          abstractThemeClassNames: abstractThemeClassNames,
          parentKey: currentKey,
        );
      }
    });
  }
}
