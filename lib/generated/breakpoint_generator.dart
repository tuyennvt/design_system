import 'dart:convert';
import 'dart:io';

import '../utils.dart';
import 'color_token_parser.dart';
import 'number_token_parser.dart';

class BreakpointGenerator {
  BreakpointGenerator({
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

    final abstractBreakpointClassNames = <String>{};
    for (final key in json.keys) {
      final abstractBreakpointClassName = _getAbstractBreakpointClassName(key);
      if (!abstractBreakpointClassNames.contains(abstractBreakpointClassName)) {
        abstractBreakpointClassNames.add(abstractBreakpointClassName);
        final abstractBreakpointContent =
            _getAbstractBreakpointContent(json[key]);
        await _createAbstractBreakpoint(
          name: abstractBreakpointClassName,
          fileName: abstractBreakpointClassName.toSnakeCase,
          content: abstractBreakpointContent,
        );
      }
    }

    for (final element in abstractBreakpointClassNames) {
      kvDesignTokenContent
          .writeln('\tlate final $element ${element.toFirstLowerCase};');
    }

    final breakpointClassNames = <String>[];
    for (final key in json.keys) {
      final breakpointClassName = _getBreakpointClassName(key);
      breakpointClassNames.add(breakpointClassName);
      final breakpointContent = _getBreakpointContent(
        json[key],
        abstractBreakpointClassNames: abstractBreakpointClassNames,
      );
      await _createBreakpoint(
        name: breakpointClassName,
        abstractBreakpointClassNames: abstractBreakpointClassNames,
        fileName: breakpointClassName.toSnakeCase,
        content: breakpointContent,
      );
      final abstractBreakpointClassName = _getAbstractBreakpointClassName(key);
      kvDesignTokenContent.writeln(
        _getKvDesignTokenContent(
          json[key],
          abstractBreakpointClassName: abstractBreakpointClassName,
          abstractBreakpointClassNames: abstractBreakpointClassNames,
        ),
      );
    }

    await _createExportFile(
      abstractBreakpointNames: abstractBreakpointClassNames,
      breakpointNames: breakpointClassNames,
    );
    return kvDesignTokenContent.toString();
  }

  String _getAbstractBreakpointClassName(String key) =>
      key.standardize.split('.').first;

  String _getAbstractBreakpointContent(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    _parseTokenForAbstractBreakpoint(json, buffer);
    return buffer.toString();
  }

  void _parseTokenForAbstractBreakpoint(
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
        _parseTokenForAbstractBreakpoint(
          jsonValue,
          buffer,
          parentKey: currentKey,
        );
      }
    });
  }

  Future<void> _createAbstractBreakpoint({
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

  String _getBreakpointClassName(String key) =>
      key.standardize.replaceAll('.', '');

  String _getBreakpointContent(
    Map<String, dynamic> json, {
    required Set<String> abstractBreakpointClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForBreakpoint(
      json,
      buffer,
      abstractBreakpointClassNames: abstractBreakpointClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForBreakpoint(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    required Set<String> abstractBreakpointClassNames,
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
              abstractClassNames: abstractBreakpointClassNames,
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
              abstractClassNames: abstractBreakpointClassNames,
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
        _parseTokenForBreakpoint(
          jsonValue,
          buffer,
          parentKey: currentKey,
          abstractBreakpointClassNames: abstractBreakpointClassNames,
        );
      }
    });
  }

  Future<void> _createBreakpoint({
    required String name,
    required Set<String> abstractBreakpointClassNames,
    required String fileName,
    required String content,
  }) async {
    var abstractBreakpointClassName = '';
    for (final element in abstractBreakpointClassNames) {
      if (name.startsWith(element)) {
        abstractBreakpointClassName = element;
        break;
      }
    }
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import '../kv_design_system.dart';");
    buffer.writeln();
    buffer.writeln('class $name implements $abstractBreakpointClassName {');
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('$outputFilePath$fileName.dart');
    await file.writeAsString(buffer.toString());
  }

  Future<void> _createExportFile({
    required Set<String> abstractBreakpointNames,
    required List<String> breakpointNames,
  }) async {
    final buffer = StringBuffer();
    for (final abstractBreakpointName in abstractBreakpointNames) {
      buffer.writeln("export '${abstractBreakpointName.toSnakeCase}.dart';");
    }
    for (final breakpointName in breakpointNames) {
      buffer.writeln("export '${breakpointName.toSnakeCase}.dart';");
    }
    final file = File('${outputFilePath}export_breakpoint.dart');
    await file.writeAsString(buffer.toString());
  }

  String _getKvDesignTokenContent(
    Map<String, dynamic> json, {
    String abstractBreakpointClassName = '',
    required Set<String> abstractBreakpointClassNames,
  }) {
    final buffer = StringBuffer();
    _parseTokenForKvDesignToken(
      json,
      buffer,
      abstractBreakpointClassName: abstractBreakpointClassName,
      abstractBreakpointClassNames: abstractBreakpointClassNames,
    );
    return buffer.toString();
  }

  void _parseTokenForKvDesignToken(
    Map<String, dynamic> json,
    StringBuffer buffer, {
    String abstractBreakpointClassName = '',
    required Set<String> abstractBreakpointClassNames,
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
              abstractClassNames: abstractBreakpointClassNames,
            );
            final result = colorTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractBreakpointClassName.toFirstLowerCase,
            );
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
              abstractClassNames: abstractBreakpointClassNames,
            );
            final result = numberTokenParser.parse(
              parseForKvDesignSystem: true,
              overridePrefix: abstractBreakpointClassName.toFirstLowerCase,
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
          abstractBreakpointClassName: abstractBreakpointClassName,
          abstractBreakpointClassNames: abstractBreakpointClassNames,
          parentKey: currentKey,
        );
      }
    });
  }
}
