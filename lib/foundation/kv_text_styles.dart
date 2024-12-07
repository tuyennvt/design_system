import 'package:flutter/material.dart';

import '../kv_design_system.dart';

extension _FontWeightExt on num {
  FontWeight get toFontWeight {
    switch (this) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w400;
      case 500:
        return FontWeight.w500;
      case 600:
        return FontWeight.w600;
      case 700:
        return FontWeight.w700;
      case 800:
        return FontWeight.w800;
      case 900:
        return FontWeight.w900;
      default:
        return FontWeight.w400;
    }
  }
}

class KvTextStyles {
  static const String fontFamily = 'Inter';

  static double _getHeight(double size, double lineHeight) => lineHeight / size;

  static Color _getColor(Color? color) =>
      color ?? KvDesignSystem().textNeutralBase;

  static TextStyle display({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().displaySize,
      fontWeight: KvDesignSystem().displayWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().displaySize,
        KvDesignSystem().displayLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineXL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().headlineXLSize,
      fontWeight: KvDesignSystem().headlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().headlineXLSize,
        KvDesignSystem().headlineXLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().headlineLSize,
      fontWeight: KvDesignSystem().headlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().headlineLSize,
        KvDesignSystem().headlineLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineM({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().headlineMSize,
      fontWeight: KvDesignSystem().headlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().headlineMSize,
        KvDesignSystem().headlineMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineS({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().headlineSSize,
      fontWeight: KvDesignSystem().headlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().headlineSSize,
        KvDesignSystem().headlineSLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineXS({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().headlineXSSize,
      fontWeight: KvDesignSystem().headlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().headlineXSSize,
        KvDesignSystem().headlineXSLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleXL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().titleXLSize,
      fontWeight: KvDesignSystem().titleWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().titleXLSize,
        KvDesignSystem().titleXLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().titleLSize,
      fontWeight: KvDesignSystem().titleWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().titleLSize,
        KvDesignSystem().titleLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleM({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().titleMSize,
      fontWeight: KvDesignSystem().titleWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().titleMSize,
        KvDesignSystem().titleMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleS({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().titleSSize,
      fontWeight: KvDesignSystem().titleWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().titleSSize,
        KvDesignSystem().titleSLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelXL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().labelXLSize,
      fontWeight: KvDesignSystem().labelWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().labelXLSize,
        KvDesignSystem().labelXLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelL({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().labelLSize,
      fontWeight: KvDesignSystem().labelWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().labelLSize,
        KvDesignSystem().labelLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelM({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().labelMSize,
      fontWeight: KvDesignSystem().labelWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().labelMSize,
        KvDesignSystem().labelMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelS({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().labelSSize,
      fontWeight: KvDesignSystem().labelWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().labelSSize,
        KvDesignSystem().labelSLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelXS({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().labelXSSize,
      fontWeight: KvDesignSystem().labelWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().labelXSSize,
        KvDesignSystem().labelXSLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLRE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyLSize,
      fontWeight: KvDesignSystem().bodyLREWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyLSize,
        KvDesignSystem().bodyLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLME({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyLSize,
      fontWeight: KvDesignSystem().bodyLMEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyLSize,
        KvDesignSystem().bodyLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLSE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyLSize,
      fontWeight: KvDesignSystem().bodyLSEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyLSize,
        KvDesignSystem().bodyLLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMRE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyMSize,
      fontWeight: KvDesignSystem().bodyMREWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyMSize,
        KvDesignSystem().bodyMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMME({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyMSize,
      fontWeight: KvDesignSystem().bodyMMEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyMSize,
        KvDesignSystem().bodyMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMSE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyMSize,
      fontWeight: KvDesignSystem().bodyMSEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyMSize,
        KvDesignSystem().bodyMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMMEUnderline({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().bodyMSize,
      fontWeight: KvDesignSystem().bodyMMEUWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().bodyMSize,
        KvDesignSystem().bodyMLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.underline,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionRE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionREWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionME({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionMEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionSE({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionSEWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionIT({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionITWeight.toFontWeight,
      fontStyle: FontStyle.italic,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionStrikethrough({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionStrikethroughWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.lineThrough,
      fontFamily: fontFamily,
    );
  }

  static TextStyle captionUnderline({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().captionSize,
      fontWeight: KvDesignSystem().captionUnderlineWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().captionSize,
        KvDesignSystem().captionLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.underline,
      fontFamily: fontFamily,
    );
  }

  static TextStyle navigation({
    Color? color,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: KvDesignSystem().navigationSize,
      fontWeight: KvDesignSystem().navigationWeight.toFontWeight,
      height: _getHeight(
        KvDesignSystem().navigationSize,
        KvDesignSystem().navigationLineHeight,
      ),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle freeStyle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: _getColor(color),
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      leadingDistribution: TextLeadingDistribution.even,
      decoration: decoration,
      fontFamily: fontFamily,
    );
  }
}
