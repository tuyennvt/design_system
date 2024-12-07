import 'package:example/main_page.dart';
import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  KvDesignSystem().init(
    themeCollection1: ThemeCollection1Avocado(),
    themeColorCollections:
        ThemeColorCollectionsBluePurple(ThemeCollection2Blue()),
    themeCollection2: ThemeCollection2Blue(),
    themeCollection3: ThemeCollection3Carrot(),
    productTheme: ProductThemeClassic(),
    kvTextStyle: KvTextStyleMobile430(),
    dimensionMobile: DimensionMobileM(),
    breakpoint: BreakpointM(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: KvDesignSystem().primary500),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
