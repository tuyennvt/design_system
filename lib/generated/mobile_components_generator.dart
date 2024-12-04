import 'dart:convert';
import 'dart:io';

import 'color_token_parser.dart';
import 'number_token_parser.dart';

class MobileComponentsGenerator {
  MobileComponentsGenerator({
    required this.inputFile,
  }) {
    _kvDesignSystemRows = <String>{};
  }

  final File inputFile;

  late final Set<String> _kvDesignSystemRows;

  Future<String> generate() async {
    final fileContent = await inputFile.readAsString();
    final List<dynamic> json = jsonDecode(fileContent);

    final kvDesignTokenContent = StringBuffer();

    for (final element in json) {
      kvDesignTokenContent.writeln(_getKvDesignTokenContent(element));
    }
    return kvDesignTokenContent.toString();
  }

  String _getKvDesignTokenContent(Map<String, dynamic> json) {
    final buffer = StringBuffer();
    _parseTokenForKvDesignToken(
      json,
      buffer,
    );
    return buffer.toString();
  }

  void _parseTokenForKvDesignToken(
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
            final colorTokenParser = ColorTokenParser(
              currentKey,
              value,
            );
            final result = colorTokenParser.parse();
            if (_kvDesignSystemRows.add(result)) {
              buffer.writeln(result);
            }
            break;
          case 'number':
            final numberTokenParser = NumberTokenParser(
              currentKey,
              value,
            );
            final result = numberTokenParser.parse();
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
          parentKey: currentKey,
        );
      }
    });
  }
}
