import '../utils.dart';

class NumberTokenParser {
  NumberTokenParser(
    this.key,
    this.value, {
    this.abstractClassNames = const <String>{},
  });

  final String key;
  final dynamic value;
  final Set<String> abstractClassNames;

  String parse({
    bool includeOverride = false,
    bool parseForAbstract = false,
    bool parseForKvDesignSystem = false,
    String currentKey = '',
    String overridePrefix = '',
  }) {
    if (parseForAbstract) {
      return '\tdouble get ${key.toReferenceName};';
    }
    if (parseForKvDesignSystem) {
      return _parseReference(
        parseForKvDesignSystem: true,
        overridePrefix: overridePrefix,
      );
    }
    if (value is num) {
      return _parseNumber(includeOverride: includeOverride);
    } else if (value is String && value.startsWith('{')) {
      return _parseReference(
        includeOverride: includeOverride,
        overridePrefix: overridePrefix,
      );
    }
    return '';
  }

  String _parseNumber({bool includeOverride = false}) {
    return '\t${includeOverride ? '@override\n\t' : ''}double get ${key.toReferenceName} => $value;';
  }

  String _parseReference({
    bool includeOverride = false,
    bool parseForKvDesignSystem = false,
    String overridePrefix = '',
  }) {
    if (parseForKvDesignSystem) {
      final className = key
          .split('.')
          .first
          .standardize
          .replaceAll('{', '')
          .replaceAll('}', '');
      return '\tdouble get ${key.toReferenceName} => ${overridePrefix.isEmpty ? className.toReferenceName : overridePrefix}.${key.toReferenceName};';
    }
    final className = value
        .toString()
        .split('.')
        .first
        .standardize
        .replaceAll('{', '')
        .replaceAll('}', '');
    return '\t${includeOverride ? '@override\n\t' : ''}double get ${key.toReferenceName} => $overridePrefix${abstractClassNames.contains(className) ? '${className.toReferenceName}.' : ''}${value.toString().toReferenceName};';
  }
}
