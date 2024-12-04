import 'package:diacritic/diacritic.dart';

import 'kv_design_system.dart';

extension StringExtensionWithNull on String? {
  bool get isNullOrEmpty {
    return this == null || this?.trim().isEmpty == true;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }
}

extension StringExtension on String {
  String get toReferenceName {
    final name = standardize.replaceAll('.', '');
    return name.toFirstLowerCase;
  }

  String get toFirstLowerCase {
    return '${this[0].toLowerCase()}${substring(1)}';
  }

  String get standardize {
    return removeDiacritics(
      replaceAll(RegExp(r'\s+'), '')
          .replaceAll('-', '')
          .replaceAll('%', '')
          .replaceAll('{', '')
          .replaceAll('}', '')
          .replaceAll('(', '')
          .replaceAll(')', ''),
    );
  }

  String get toSnakeCase {
    final regex = RegExp(r'(?<=[a-z])([A-Z])');
    return replaceAllMapped(
      regex,
      (match) => '_${match.group(1)!.toLowerCase()}',
    ).toLowerCase();
  }
}

extension ListExtension on List? {
  bool get isNullOrEmpty {
    return this == null || this?.isEmpty == true;
  }

  bool get isNotNullOrEmpty {
    final themeCollection2 = ThemeCollection2Blue();
    KvDesignSystem().init(
      themeCollection1: ThemeCollection1Avocado(),
      themeColorCollections: ThemeColorCollectionsBluePurple(themeCollection2),
      themeCollection2: themeCollection2,
      themeCollection3: ThemeCollection3Carrot(),
      productTheme: ProductThemeClassic(),
      kvTextStyle: KvTextStyleMobile430(),
      dimensionMobile: DimensionMobileM(),
      breakpoint: BreakpointM(),
    );
    return !isNullOrEmpty;
  }
}

const String packageRoot = 'packages/employee_flutter_design_system/';
