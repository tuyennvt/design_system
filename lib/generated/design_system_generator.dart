import 'dart:io';

import 'breakpoint_generator.dart';
import 'dimension_generator.dart';
import 'foundation_generator.dart';
import 'mobile_components_generator.dart';
import 'text_style_generator.dart';
import 'theme_generator.dart';

void main() async {
  final themeGenerator = ThemeGenerator(
    inputFile: File('assets/json/Data of Design System.json'),
    outputFilePath: 'lib/theme/',
  );
  final textStyleGenerator = TextStyleGenerator(
    inputFile: File('assets/json/Text Style.json'),
    outputFilePath: 'lib/text_style/',
  );
  final foundationGenerator = FoundationGenerator(
    inputFile: File('assets/json/Foundation.json'),
  );
  final dimensionGenerator = DimensionGenerator(
    inputFile: File('assets/json/Dimension.json'),
    outputFilePath: 'lib/dimension/',
  );
  final breakpointGenerator = BreakpointGenerator(
    inputFile: File('assets/json/Breakpoint.json'),
    outputFilePath: 'lib/breakpoint/',
  );
  final mobileComponentsGenerator = MobileComponentsGenerator(
    inputFile: File('assets/json/Mobile Components.json'),
  );
  final kvDesignSystemGenerator = DesignSystemGenerator(
    themeGenerator: themeGenerator,
    textStyleGenerator: textStyleGenerator,
    foundationGenerator: foundationGenerator,
    dimensionGenerator: dimensionGenerator,
    breakpointGenerator: breakpointGenerator,
    mobileComponentsGenerator: mobileComponentsGenerator,
  );
  await kvDesignSystemGenerator.generate();
}

class DesignSystemGenerator {
  const DesignSystemGenerator({
    required this.themeGenerator,
    required this.textStyleGenerator,
    required this.foundationGenerator,
    required this.dimensionGenerator,
    required this.breakpointGenerator,
    required this.mobileComponentsGenerator,
  });

  final ThemeGenerator themeGenerator;
  final TextStyleGenerator textStyleGenerator;
  final FoundationGenerator foundationGenerator;
  final DimensionGenerator dimensionGenerator;
  final BreakpointGenerator breakpointGenerator;
  final MobileComponentsGenerator mobileComponentsGenerator;

  Future<void> generate() async {
    final kvDesignSystemContentTheme = await themeGenerator.generate();
    final kvDesignSystemContentTextStyle = await textStyleGenerator.generate();
    final kvDesignSystemContentFoundation =
        await foundationGenerator.generate();
    final kvDesignSystemContentDimension = await dimensionGenerator.generate();
    final kvDesignSystemContentBreakpoint = await breakpointGenerator.generate();
    final kvDesignSystemContentMobileComponents = await mobileComponentsGenerator.generate();
    final buffer = StringBuffer();
    buffer.writeln(kvDesignSystemContentTheme);
    buffer.writeln(kvDesignSystemContentTextStyle);
    buffer.writeln(kvDesignSystemContentFoundation);
    buffer.writeln(kvDesignSystemContentDimension);
    buffer.writeln(kvDesignSystemContentBreakpoint);
    buffer.writeln(kvDesignSystemContentMobileComponents);
    await _createFile(content: buffer.toString());
  }

  Future<void> _createFile({required String content}) async {
    final buffer = StringBuffer();
    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln("import 'theme/export_theme.dart';");
    buffer.writeln("import 'text_style/export_text_style.dart';");
    buffer.writeln("import 'dimension/export_dimension.dart';");
    buffer.writeln("import 'breakpoint/export_breakpoint.dart';");
    buffer.writeln("export 'theme/export_theme.dart';");
    buffer.writeln("export 'text_style/export_text_style.dart';");
    buffer.writeln("export 'dimension/export_dimension.dart';");
    buffer.writeln("export 'breakpoint/export_breakpoint.dart';");
    buffer.writeln();
    buffer.writeln('class KvDesignSystem {');
    buffer.writeln('\tfactory KvDesignSystem() => _instance;');
    buffer.writeln();
    buffer.writeln('\tKvDesignSystem._();');
    buffer.writeln();
    buffer.writeln('\tstatic final _instance = KvDesignSystem._();');
    buffer.writeln();
    buffer.writeln(content);
    buffer.writeln('}');
    final file = File('lib/kv_design_system.dart');
    await file.writeAsString(buffer.toString());
  }
}
