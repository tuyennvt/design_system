import 'package:flutter/material.dart';

import 'd_tokens.dart';

extension _FontWeightExt on int {
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

  static double _getHeight(int size, int lineHeight) =>
      (size / lineHeight).toDouble();

  static TextStyle display({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.displaySize.toDouble(),
      fontWeight: DTokens.displayWeight.toFontWeight,
      height: _getHeight(DTokens.displaySize, DTokens.displayLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineXL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.headlineXLSize.toDouble(),
      fontWeight: DTokens.headlineWeight.toFontWeight,
      height: _getHeight(DTokens.headlineXLSize, DTokens.headlineXLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.headlineLSize.toDouble(),
      fontWeight: DTokens.headlineWeight.toFontWeight,
      height: _getHeight(DTokens.headlineLSize, DTokens.headlineLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineM({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.headlineMSize.toDouble(),
      fontWeight: DTokens.headlineWeight.toFontWeight,
      height: _getHeight(DTokens.headlineMSize, DTokens.headlineMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineS({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.headlineSSize.toDouble(),
      fontWeight: DTokens.headlineWeight.toFontWeight,
      height: _getHeight(DTokens.headlineSSize, DTokens.headlineSLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle headlineXS({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.headlineXSSize.toDouble(),
      fontWeight: DTokens.headlineWeight.toFontWeight,
      height: _getHeight(DTokens.headlineXSSize, DTokens.headlineXSLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleXL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.titleXLSize.toDouble(),
      fontWeight: DTokens.titleWeight.toFontWeight,
      height: _getHeight(DTokens.titleXLSize, DTokens.titleXLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.titleLSize.toDouble(),
      fontWeight: DTokens.titleWeight.toFontWeight,
      height: _getHeight(DTokens.titleLSize, DTokens.titleLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleM({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.titleMSize.toDouble(),
      fontWeight: DTokens.titleWeight.toFontWeight,
      height: _getHeight(DTokens.titleMSize, DTokens.titleMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle titleS({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.titleSSize.toDouble(),
      fontWeight: DTokens.titleWeight.toFontWeight,
      height: _getHeight(DTokens.titleSSize, DTokens.titleSLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelXL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.labelXLSize.toDouble(),
      fontWeight: DTokens.labelWeight.toFontWeight,
      height: _getHeight(DTokens.labelXLSize, DTokens.labelXLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelL({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.labelLSize.toDouble(),
      fontWeight: DTokens.labelWeight.toFontWeight,
      height: _getHeight(DTokens.labelLSize, DTokens.labelLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelM({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.labelMSize.toDouble(),
      fontWeight: DTokens.labelWeight.toFontWeight,
      height: _getHeight(DTokens.labelMSize, DTokens.labelMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelS({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.labelSSize.toDouble(),
      fontWeight: DTokens.labelWeight.toFontWeight,
      height: _getHeight(DTokens.labelSSize, DTokens.labelSLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle labelXS({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.labelXSSize.toDouble(),
      fontWeight: DTokens.labelWeight.toFontWeight,
      height: _getHeight(DTokens.labelXSSize, DTokens.labelXSLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLRE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyLSize.toDouble(),
      fontWeight: DTokens.bodyLREWeight.toFontWeight,
      height: _getHeight(DTokens.bodyLSize, DTokens.bodyLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLME({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyLSize.toDouble(),
      fontWeight: DTokens.bodyLMEWeight.toFontWeight,
      height: _getHeight(DTokens.bodyLSize, DTokens.bodyLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyLSE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyLSize.toDouble(),
      fontWeight: DTokens.bodyLSEWeight.toFontWeight,
      height: _getHeight(DTokens.bodyLSize, DTokens.bodyLLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMRE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyMSize.toDouble(),
      fontWeight: DTokens.bodyMREWeight.toFontWeight,
      height: _getHeight(DTokens.bodyMSize, DTokens.bodyMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMME({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyMSize.toDouble(),
      fontWeight: DTokens.bodyMMEWeight.toFontWeight,
      height: _getHeight(DTokens.bodyMSize, DTokens.bodyMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMSE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyMSize.toDouble(),
      fontWeight: DTokens.bodyMSEWeight.toFontWeight,
      height: _getHeight(DTokens.bodyMSize, DTokens.bodyMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bodyMMEUnderline({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.bodyMSize.toDouble(),
      fontWeight: DTokens.bodyMMEUWeight.toFontWeight,
      height: _getHeight(DTokens.bodyMSize, DTokens.bodyMLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.underline,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationRE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionREWeight.toFontWeight,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationME({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionMEWeight.toFontWeight,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationSE({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionSEWeight.toFontWeight,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationIT({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionITWeight.toFontWeight,
      fontStyle: FontStyle.italic,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationStrikethrough({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionStrikethroughWeight.toFontWeight,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.lineThrough,
      fontFamily: fontFamily,
    );
  }

  static TextStyle cationUnderline({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.captionSize.toDouble(),
      fontWeight: DTokens.captionUnderlineWeight.toFontWeight,
      height: _getHeight(DTokens.captionSize, DTokens.captionLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.underline,
      fontFamily: fontFamily,
    );
  }

  static TextStyle navigation({
    Color color = DTokens.textNeutralBase,
  }) {
    return TextStyle(
      color: color,
      fontSize: DTokens.navigationSize.toDouble(),
      fontWeight: DTokens.navigationWeight.toFontWeight,
      height: _getHeight(DTokens.navigationSize, DTokens.navigationLineHeight),
      leadingDistribution: TextLeadingDistribution.even,
      fontFamily: fontFamily,
    );
  }

  static TextStyle freeStyle({
    Color color = DTokens.textNeutralBase,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: height,
      leadingDistribution: TextLeadingDistribution.even,
      decoration: decoration,
      fontFamily: fontFamily,
    );
  }
}
