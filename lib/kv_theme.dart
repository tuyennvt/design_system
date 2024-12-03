class KvTheme {
  factory KvTheme() => _instance;

  KvTheme._();

  static final _instance = KvTheme._();

  void config({
    required ThemeCollection1 themeCollection1,
    required ThemeCollection2 themeCollection2,
    required ThemeCollection3 themeCollection3,
    required ThemeColorCollections themeColorCollections,
    required ProductTheme productTheme,
  }) {
    this.themeCollection1 = themeCollection1;
    this.themeCollection2 = themeCollection2;
    this.themeCollection3 = themeCollection3;
    this.themeColorCollections = themeColorCollections;
    this.productTheme = productTheme;
  }

  late final ThemeCollection1 themeCollection1;
  late final ThemeCollection2 themeCollection2;
  late final ThemeCollection3 themeCollection3;
  late final ThemeColorCollections themeColorCollections;
  late final ProductTheme productTheme;
}

abstract class ThemeCollection1 {}

abstract class ThemeCollection2 {}

abstract class ThemeCollection3 {}

abstract class ThemeColorCollections {}

abstract class ProductTheme {}

class ThemeCollection1Avocado implements ThemeCollection1 {}

class ThemeCollection1Solider implements ThemeCollection1 {}

class ThemeCollection1Java implements ThemeCollection1 {}

class ThemeCollection2Blue implements ThemeCollection2 {}

class ThemeCollection2DarkBlue implements ThemeCollection2 {}

class ThemeCollection2Grape implements ThemeCollection2 {}

class ThemeCollection3Magenta implements ThemeCollection3 {}

class ThemeCollection3Carrot implements ThemeCollection3 {}

class ThemeCollection3BarnRed implements ThemeCollection3 {}

class ThemeCollectionsShadeOfGreen implements ThemeColorCollections {}

class ThemeColorCollectionsBluePurple implements ThemeColorCollections {}

class ThemeColorCollectionsLightWarm implements ThemeColorCollections {}

class ProductThemeClassic implements ProductTheme {}

class ProductThemeKeivi implements ProductTheme {}

class ProductThemeColorThemes implements ProductTheme {}
