import '../utils.dart';

final _rgbaPattern = RegExp(r'rgba\((\d+),\s*(\d+),\s*(\d+),\s*([\d.]+)\)');

class ColorTokenParser {
  ColorTokenParser(
    this.key,
    this.value, {
    this.abstractClassNames = const <String>{},
  });

  final String key;
  final String value;
  final Set<String> abstractClassNames;

  String parse({
    bool includeOverride = false,
    bool parseForAbstract = false,
    bool parseForKvDesignSystem = false,
    String overridePrefix = '',
  }) {
    if (parseForAbstract) {
      return '\tColor get ${key.toReferenceName};';
    }
    if (parseForKvDesignSystem) {
      return _parseReference(
        parseForKvDesignSystem: true,
        overridePrefix: overridePrefix,
      );
    }
    if (value.startsWith('#')) {
      return _parseColor(includeOverride: includeOverride);
    } else if (value.startsWith('rgba')) {
      return _parseColorRGBA(includeOverride: includeOverride);
    } else if (value.startsWith('{')) {
      return _parseReference(
        includeOverride: includeOverride,
        overridePrefix: overridePrefix,
      );
    }
    return '';
  }

  String _parseColor({bool includeOverride = false}) {
    final valueParsed = 'Color(0xFF${value.substring(1).toUpperCase()})';
    return '\t${includeOverride ? '@override\n\t' : ''}Color get ${key.toReferenceName} => const $valueParsed;';
  }

  String _parseColorRGBA({bool includeOverride = false}) {
    final match = _rgbaPattern.firstMatch(value);
    if (match == null) {
      return '';
    }
    final r = int.parse(match.group(1)!);
    final g = int.parse(match.group(2)!);
    final b = int.parse(match.group(3)!);
    final a = double.parse(match.group(4)!);
    final valueParsed = 'Color.fromRGBO($r, $g, $b, $a)';
    return '\t${includeOverride ? '@override\n\t' : ''}Color get ${key.toReferenceName} => const $valueParsed;';
  }

  String _parseReference({
    bool includeOverride = false,
    bool parseForKvDesignSystem = false,
    String overridePrefix = '',
  }) {
    if (parseForKvDesignSystem) {
      final className = key.split('.').first.standardize;
      return '\tColor get ${key.toReferenceName} => ${overridePrefix.isEmpty ? className.toReferenceName : overridePrefix}.${key.toReferenceName};';
    }
    final className = value.split('.').first.standardize;
    return '\t${includeOverride ? '@override\n\t' : ''}Color get ${key.toReferenceName} => $overridePrefix${abstractClassNames.contains(className) ? '${className.toReferenceName}.' : ''}${value.toReferenceName};';
  }
}
