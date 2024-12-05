import 'package:flutter/material.dart';

import 'breakpoint/export_breakpoint.dart';
import 'dimension/export_dimension.dart';
import 'text_style/export_text_style.dart';
import 'theme/export_theme.dart';

export 'breakpoint/export_breakpoint.dart';
export 'component/kv_component.dart';
export 'dimension/export_dimension.dart';
export 'foundation/kv_foundation.dart';
export 'text_style/export_text_style.dart';
export 'theme/export_theme.dart';

class KvDesignSystem {
  factory KvDesignSystem() => _instance;

  KvDesignSystem._();

  static final _instance = KvDesignSystem._();

  void init({
    required ThemeCollection1 themeCollection1,
    required ThemeColorCollections themeColorCollections,
    required ThemeCollection2 themeCollection2,
    required ThemeCollection3 themeCollection3,
    required ProductTheme productTheme,
    required KvTextStyle kvTextStyle,
    required DimensionMobile dimensionMobile,
    required Breakpoint breakpoint,
  }) {
    this.themeCollection1 = themeCollection1;
    this.themeColorCollections = themeColorCollections;
    this.themeCollection2 = themeCollection2;
    this.themeCollection3 = themeCollection3;
    this.productTheme = productTheme;
    this.kvTextStyle = kvTextStyle;
    this.dimensionMobile = dimensionMobile;
    this.breakpoint = breakpoint;
  }

  late final ThemeCollection1 themeCollection1;
  late final ThemeColorCollections themeColorCollections;
  late final ThemeCollection2 themeCollection2;
  late final ThemeCollection3 themeCollection3;
  late final ProductTheme productTheme;

  Color get themeCollection1Primary15 =>
      themeCollection1.themeCollection1Primary15;

  Color get themeCollection1Primary25 =>
      themeCollection1.themeCollection1Primary25;

  Color get themeCollection1Primary50 =>
      themeCollection1.themeCollection1Primary50;

  Color get themeCollection1Primary75 =>
      themeCollection1.themeCollection1Primary75;

  Color get themeCollection1Primary100 =>
      themeCollection1.themeCollection1Primary100;

  Color get themeCollection1Primary150 =>
      themeCollection1.themeCollection1Primary150;

  Color get themeCollection1Primary200 =>
      themeCollection1.themeCollection1Primary200;

  Color get themeCollection1Primary300 =>
      themeCollection1.themeCollection1Primary300;

  Color get themeCollection1Primary400 =>
      themeCollection1.themeCollection1Primary400;

  Color get themeCollection1Primary500 =>
      themeCollection1.themeCollection1Primary500;

  Color get themeCollection1Primary600 =>
      themeCollection1.themeCollection1Primary600;

  Color get themeCollection1Primary700 =>
      themeCollection1.themeCollection1Primary700;

  Color get themeCollection1Primary800 =>
      themeCollection1.themeCollection1Primary800;

  Color get themeCollection1Primary825 =>
      themeCollection1.themeCollection1Primary825;

  Color get themeCollection1Primary850 =>
      themeCollection1.themeCollection1Primary850;

  Color get themeCollection1Primary875 =>
      themeCollection1.themeCollection1Primary875;

  Color get themeCollection1Primary900 =>
      themeCollection1.themeCollection1Primary900;

  Color get themeCollection1Primary500Opacity70 =>
      themeCollection1.themeCollection1Primary500Opacity70;

  Color get themeCollection1Primary500Opacity15 =>
      themeCollection1.themeCollection1Primary500Opacity15;

  Color get themeColorCollectionsPrimary25 =>
      themeColorCollections.themeColorCollectionsPrimary25;

  Color get themeColorCollectionsPrimary50 =>
      themeColorCollections.themeColorCollectionsPrimary50;

  Color get themeColorCollectionsPrimary75 =>
      themeColorCollections.themeColorCollectionsPrimary75;

  Color get themeColorCollectionsPrimary100 =>
      themeColorCollections.themeColorCollectionsPrimary100;

  Color get themeColorCollectionsPrimary150 =>
      themeColorCollections.themeColorCollectionsPrimary150;

  Color get themeColorCollectionsPrimary200 =>
      themeColorCollections.themeColorCollectionsPrimary200;

  Color get themeColorCollectionsPrimary300 =>
      themeColorCollections.themeColorCollectionsPrimary300;

  Color get themeColorCollectionsPrimary400 =>
      themeColorCollections.themeColorCollectionsPrimary400;

  Color get themeColorCollectionsPrimary500 =>
      themeColorCollections.themeColorCollectionsPrimary500;

  Color get themeColorCollectionsPrimary600 =>
      themeColorCollections.themeColorCollectionsPrimary600;

  Color get themeColorCollectionsPrimary700 =>
      themeColorCollections.themeColorCollectionsPrimary700;

  Color get themeColorCollectionsPrimary800 =>
      themeColorCollections.themeColorCollectionsPrimary800;

  Color get themeColorCollectionsPrimary825 =>
      themeColorCollections.themeColorCollectionsPrimary825;

  Color get themeColorCollectionsPrimary850 =>
      themeColorCollections.themeColorCollectionsPrimary850;

  Color get themeColorCollectionsPrimary875 =>
      themeColorCollections.themeColorCollectionsPrimary875;

  Color get themeColorCollectionsPrimary900 =>
      themeColorCollections.themeColorCollectionsPrimary900;

  Color get themeColorCollectionsPrimary500Opacity15 =>
      themeColorCollections.themeColorCollectionsPrimary500Opacity15;

  Color get themeColorCollectionsPrimary500Opacity70 =>
      themeColorCollections.themeColorCollectionsPrimary500Opacity70;

  Color get themeColorCollectionsSecondary25 =>
      themeColorCollections.themeColorCollectionsSecondary25;

  Color get themeColorCollectionsSecondary50 =>
      themeColorCollections.themeColorCollectionsSecondary50;

  Color get themeColorCollectionsSecondary75 =>
      themeColorCollections.themeColorCollectionsSecondary75;

  Color get themeColorCollectionsSecondary100 =>
      themeColorCollections.themeColorCollectionsSecondary100;

  Color get themeColorCollectionsSecondary150 =>
      themeColorCollections.themeColorCollectionsSecondary150;

  Color get themeColorCollectionsSecondary200 =>
      themeColorCollections.themeColorCollectionsSecondary200;

  Color get themeColorCollectionsSecondary300 =>
      themeColorCollections.themeColorCollectionsSecondary300;

  Color get themeColorCollectionsSecondary400 =>
      themeColorCollections.themeColorCollectionsSecondary400;

  Color get themeColorCollectionsSecondary500 =>
      themeColorCollections.themeColorCollectionsSecondary500;

  Color get themeColorCollectionsSecondary600 =>
      themeColorCollections.themeColorCollectionsSecondary600;

  Color get themeColorCollectionsSecondary700 =>
      themeColorCollections.themeColorCollectionsSecondary700;

  Color get themeColorCollectionsSecondary800 =>
      themeColorCollections.themeColorCollectionsSecondary800;

  Color get themeColorCollectionsSecondary825 =>
      themeColorCollections.themeColorCollectionsSecondary825;

  Color get themeColorCollectionsSecondary850 =>
      themeColorCollections.themeColorCollectionsSecondary850;

  Color get themeColorCollectionsSecondary875 =>
      themeColorCollections.themeColorCollectionsSecondary875;

  Color get themeColorCollectionsSecondary900 =>
      themeColorCollections.themeColorCollectionsSecondary900;

  Color get themeColorCollectionsSecondary50070 =>
      themeColorCollections.themeColorCollectionsSecondary50070;

  Color get themeColorCollectionsSecondary50015 =>
      themeColorCollections.themeColorCollectionsSecondary50015;

  Color get bG => themeColorCollections.bG;

  Color get themeCollection2Primary15 =>
      themeCollection2.themeCollection2Primary15;

  Color get themeCollection2Primary25 =>
      themeCollection2.themeCollection2Primary25;

  Color get themeCollection2Primary50 =>
      themeCollection2.themeCollection2Primary50;

  Color get themeCollection2Primary75 =>
      themeCollection2.themeCollection2Primary75;

  Color get themeCollection2Primary100 =>
      themeCollection2.themeCollection2Primary100;

  Color get themeCollection2Primary150 =>
      themeCollection2.themeCollection2Primary150;

  Color get themeCollection2Primary200 =>
      themeCollection2.themeCollection2Primary200;

  Color get themeCollection2Primary300 =>
      themeCollection2.themeCollection2Primary300;

  Color get themeCollection2Primary400 =>
      themeCollection2.themeCollection2Primary400;

  Color get themeCollection2Primary500 =>
      themeCollection2.themeCollection2Primary500;

  Color get themeCollection2Primary600 =>
      themeCollection2.themeCollection2Primary600;

  Color get themeCollection2Primary700 =>
      themeCollection2.themeCollection2Primary700;

  Color get themeCollection2Primary800 =>
      themeCollection2.themeCollection2Primary800;

  Color get themeCollection2Primary825 =>
      themeCollection2.themeCollection2Primary825;

  Color get themeCollection2Primary850 =>
      themeCollection2.themeCollection2Primary850;

  Color get themeCollection2Primary875 =>
      themeCollection2.themeCollection2Primary875;

  Color get themeCollection2Primary900 =>
      themeCollection2.themeCollection2Primary900;

  Color get themeCollection2Primary500Opacity70 =>
      themeCollection2.themeCollection2Primary500Opacity70;

  Color get themeCollection2Primary500Opacity15 =>
      themeCollection2.themeCollection2Primary500Opacity15;

  Color get themeCollection3Primary15 =>
      themeCollection3.themeCollection3Primary15;

  Color get themeCollection3Primary25 =>
      themeCollection3.themeCollection3Primary25;

  Color get themeCollection3Primary50 =>
      themeCollection3.themeCollection3Primary50;

  Color get themeCollection3Primary75 =>
      themeCollection3.themeCollection3Primary75;

  Color get themeCollection3Primary100 =>
      themeCollection3.themeCollection3Primary100;

  Color get themeCollection3Primary150 =>
      themeCollection3.themeCollection3Primary150;

  Color get themeCollection3Primary200 =>
      themeCollection3.themeCollection3Primary200;

  Color get themeCollection3Primary300 =>
      themeCollection3.themeCollection3Primary300;

  Color get themeCollection3Primary400 =>
      themeCollection3.themeCollection3Primary400;

  Color get themeCollection3Primary500 =>
      themeCollection3.themeCollection3Primary500;

  Color get themeCollection3Primary600 =>
      themeCollection3.themeCollection3Primary600;

  Color get themeCollection3Primary700 =>
      themeCollection3.themeCollection3Primary700;

  Color get themeCollection3Primary800 =>
      themeCollection3.themeCollection3Primary800;

  Color get themeCollection3Primary825 =>
      themeCollection3.themeCollection3Primary825;

  Color get themeCollection3Primary850 =>
      themeCollection3.themeCollection3Primary850;

  Color get themeCollection3Primary875 =>
      themeCollection3.themeCollection3Primary875;

  Color get themeCollection3Primary900 =>
      themeCollection3.themeCollection3Primary900;

  Color get themeCollection3Primary500Opacity70 =>
      themeCollection3.themeCollection3Primary500Opacity70;

  Color get themeCollection3Primary500Opacity15 =>
      themeCollection3.themeCollection3Primary500Opacity15;

  Color get productStyleTypePrimaryCorlor25 =>
      productTheme.productStyleTypePrimaryCorlor25;

  Color get productStyleTypePrimaryCorlor50 =>
      productTheme.productStyleTypePrimaryCorlor50;

  Color get productStyleTypePrimaryCorlor75 =>
      productTheme.productStyleTypePrimaryCorlor75;

  Color get productStyleTypePrimaryCorlor100 =>
      productTheme.productStyleTypePrimaryCorlor100;

  Color get productStyleTypePrimaryCorlor150 =>
      productTheme.productStyleTypePrimaryCorlor150;

  Color get productStyleTypePrimaryCorlor200 =>
      productTheme.productStyleTypePrimaryCorlor200;

  Color get productStyleTypePrimaryCorlor300 =>
      productTheme.productStyleTypePrimaryCorlor300;

  Color get productStyleTypePrimaryCorlor400 =>
      productTheme.productStyleTypePrimaryCorlor400;

  Color get productStyleTypePrimaryCorlor500 =>
      productTheme.productStyleTypePrimaryCorlor500;

  Color get productStyleTypePrimaryCorlor600 =>
      productTheme.productStyleTypePrimaryCorlor600;

  Color get productStyleTypePrimaryCorlor700 =>
      productTheme.productStyleTypePrimaryCorlor700;

  Color get productStyleTypePrimaryCorlor800 =>
      productTheme.productStyleTypePrimaryCorlor800;

  Color get productStyleTypePrimaryCorlor825 =>
      productTheme.productStyleTypePrimaryCorlor825;

  Color get productStyleTypePrimaryCorlor850 =>
      productTheme.productStyleTypePrimaryCorlor850;

  Color get productStyleTypePrimaryCorlor875 =>
      productTheme.productStyleTypePrimaryCorlor875;

  Color get productStyleTypePrimaryCorlor900 =>
      productTheme.productStyleTypePrimaryCorlor900;

  Color get productStyleTypePrimaryCorlor500Opacity70 =>
      productTheme.productStyleTypePrimaryCorlor500Opacity70;

  Color get productStyleTypePrimaryCorlor500Opacity15 =>
      productTheme.productStyleTypePrimaryCorlor500Opacity15;

  Color get productStyleTypeBackgroundLight =>
      productTheme.productStyleTypeBackgroundLight;

  Color get productStyleTypeBackgroundDark =>
      productTheme.productStyleTypeBackgroundDark;

  late final KvTextStyle kvTextStyle;

  double get displaySize => kvTextStyle.displaySize;

  double get displayLineHeight => kvTextStyle.displayLineHeight;

  double get displayParagraphSpacing => kvTextStyle.displayParagraphSpacing;

  double get displayWeight => kvTextStyle.displayWeight;

  double get headlineWeight => kvTextStyle.headlineWeight;

  double get headlineXLSize => kvTextStyle.headlineXLSize;

  double get headlineXLLineHeight => kvTextStyle.headlineXLLineHeight;

  double get headlineParagraphSpacing => kvTextStyle.headlineParagraphSpacing;

  double get headlineLSize => kvTextStyle.headlineLSize;

  double get headlineLLineHeight => kvTextStyle.headlineLLineHeight;

  double get headlineMSize => kvTextStyle.headlineMSize;

  double get headlineMLineHeight => kvTextStyle.headlineMLineHeight;

  double get headlineSSize => kvTextStyle.headlineSSize;

  double get headlineSLineHeight => kvTextStyle.headlineSLineHeight;

  double get headlineXSSize => kvTextStyle.headlineXSSize;

  double get headlineXSLineHeight => kvTextStyle.headlineXSLineHeight;

  double get titleXXLSize => kvTextStyle.titleXXLSize;

  double get titleXXLLineHeight => kvTextStyle.titleXXLLineHeight;

  double get titleWeight => kvTextStyle.titleWeight;

  double get titleParagraphSpacing => kvTextStyle.titleParagraphSpacing;

  double get titleXLSize => kvTextStyle.titleXLSize;

  double get titleXLLineHeight => kvTextStyle.titleXLLineHeight;

  double get titleLSize => kvTextStyle.titleLSize;

  double get titleLLineHeight => kvTextStyle.titleLLineHeight;

  double get titleMSize => kvTextStyle.titleMSize;

  double get titleMLineHeight => kvTextStyle.titleMLineHeight;

  double get titleSSize => kvTextStyle.titleSSize;

  double get titleSLineHeight => kvTextStyle.titleSLineHeight;

  double get bodyLSize => kvTextStyle.bodyLSize;

  double get bodyLMEWeight => kvTextStyle.bodyLMEWeight;

  double get bodyLLineHeight => kvTextStyle.bodyLLineHeight;

  double get bodyLREWeight => kvTextStyle.bodyLREWeight;

  double get bodyLSEWeight => kvTextStyle.bodyLSEWeight;

  double get bodyMSize => kvTextStyle.bodyMSize;

  double get bodyMLineHeight => kvTextStyle.bodyMLineHeight;

  double get bodyMREWeight => kvTextStyle.bodyMREWeight;

  double get bodyMSEWeight => kvTextStyle.bodyMSEWeight;

  double get bodyMMEWeight => kvTextStyle.bodyMMEWeight;

  double get bodyMMEUWeight => kvTextStyle.bodyMMEUWeight;

  double get bodyParagraphSpacing => kvTextStyle.bodyParagraphSpacing;

  double get bodySSize => kvTextStyle.bodySSize;

  double get bodySLineHeight => kvTextStyle.bodySLineHeight;

  double get bodySREWeight => kvTextStyle.bodySREWeight;

  double get bodySSEWeight => kvTextStyle.bodySSEWeight;

  double get bodySMEWeight => kvTextStyle.bodySMEWeight;

  double get labelXLSize => kvTextStyle.labelXLSize;

  double get labelXLLineHeight => kvTextStyle.labelXLLineHeight;

  double get labelWeight => kvTextStyle.labelWeight;

  double get labelParagraphSpacing => kvTextStyle.labelParagraphSpacing;

  double get labelLSize => kvTextStyle.labelLSize;

  double get labelLLineHeight => kvTextStyle.labelLLineHeight;

  double get labelMSize => kvTextStyle.labelMSize;

  double get labelMLineHeight => kvTextStyle.labelMLineHeight;

  double get labelSSize => kvTextStyle.labelSSize;

  double get labelSLineHeight => kvTextStyle.labelSLineHeight;

  double get labelXSSize => kvTextStyle.labelXSSize;

  double get labelXSLineHeight => kvTextStyle.labelXSLineHeight;

  double get captionSize => kvTextStyle.captionSize;

  double get captionLineHeight => kvTextStyle.captionLineHeight;

  double get captionParagraphSpacing => kvTextStyle.captionParagraphSpacing;

  double get captionSEWeight => kvTextStyle.captionSEWeight;

  double get captionITWeight => kvTextStyle.captionITWeight;

  double get captionREWeight => kvTextStyle.captionREWeight;

  double get captionMEWeight => kvTextStyle.captionMEWeight;

  double get captionUnderlineWeight => kvTextStyle.captionUnderlineWeight;

  double get captionStrikethroughWeight =>
      kvTextStyle.captionStrikethroughWeight;

  double get navigationSize => kvTextStyle.navigationSize;

  double get navigationLineHeight => kvTextStyle.navigationLineHeight;

  double get navigationParagraphSpacing =>
      kvTextStyle.navigationParagraphSpacing;

  double get navigationWeight => kvTextStyle.navigationWeight;

  double get iconXLSize => kvTextStyle.iconXLSize;

  double get iconLSize => kvTextStyle.iconLSize;

  double get iconMSize => kvTextStyle.iconMSize;

  double get iconSSize => kvTextStyle.iconSSize;

  double get iconXSSize => kvTextStyle.iconXSSize;

  double get iconXXSSize => kvTextStyle.iconXXSSize;

  double get iconXXXSSize => kvTextStyle.iconXXXSSize;

  Color get colorBaseGray => const Color(0xFF677484);

  Color get colorBaseYellow => const Color(0xFFF8D904);

  Color get colorBasePurple => const Color(0xFFAE72F9);

  Color get colorBaseMagenta => const Color(0xFFEF5A98);

  Color get colorBasePink => const Color(0xFFEF06BC);

  Color get colorBaseOrange => const Color(0xFFFF8800);

  Color get colorBaseRed => const Color(0xFFFF0000);

  Color get colorBaseGreen => const Color(0xFF00B63E);

  Color get colorBaseBlue => const Color(0xFF0070F4);

  Color get colorBaseViolet => const Color(0xFF9254DE);

  Color get colorBaseCyan => const Color(0xFF36CFC9);

  Color get colorTransparent => const Color.fromRGBO(255, 255, 255, 0.0);

  Color get colorPalettePink25 => const Color(0xFFFEF2FC);

  Color get colorPalettePink50 => const Color(0xFFFDE6F8);

  Color get colorPalettePink75 => const Color(0xFFFDDAF5);

  Color get colorPalettePink100 => const Color(0xFFFCCDF2);

  Color get colorPalettePink150 => const Color(0xFFFAB4EB);

  Color get colorPalettePink200 => const Color(0xFFF99BE4);

  Color get colorPalettePink300 => const Color(0xFFF56AD7);

  Color get colorPalettePink400 => const Color(0xFFF238C9);

  Color get colorPalettePink500 => const Color(0xFFEF06BC);

  Color get colorPalettePink600 => const Color(0xFFBF0596);

  Color get colorPalettePink700 => const Color(0xFF8F0471);

  Color get colorPalettePink800 => const Color(0xFF60024B);

  Color get colorPalettePink825 => const Color(0xFF540242);

  Color get colorPalettePink850 => const Color(0xFF480238);

  Color get colorPalettePink875 => const Color(0xFF3C022F);

  Color get colorPalettePink900 => const Color(0xFF300126);

  Color get colorPalettePink500Opacity70 =>
      const Color.fromRGBO(239, 6, 188, 0.7);

  Color get colorPalettePink500Opacity15 =>
      const Color.fromRGBO(239, 6, 188, 0.15);

  Color get colorPaletteOrange25 => const Color(0xFFFFF9F2);

  Color get colorPaletteOrange50 => const Color(0xFFFFF3E5);

  Color get colorPaletteOrange75 => const Color(0xFFFFEDD9);

  Color get colorPaletteOrange100 => const Color(0xFFFFE7CC);

  Color get colorPaletteOrange150 => const Color(0xFFFFDBB3);

  Color get colorPaletteOrange200 => const Color(0xFFFFCF99);

  Color get colorPaletteOrange300 => const Color(0xFFFFB866);

  Color get colorPaletteOrange400 => const Color(0xFFFFA033);

  Color get colorPaletteOrange500 => const Color(0xFFFF8800);

  Color get colorPaletteOrange600 => const Color(0xFFCC6D00);

  Color get colorPaletteOrange700 => const Color(0xFF995200);

  Color get colorPaletteOrange800 => const Color(0xFF663600);

  Color get colorPaletteOrange825 => const Color(0xFF593000);

  Color get colorPaletteOrange850 => const Color(0xFF4D2900);

  Color get colorPaletteOrange875 => const Color(0xFF402200);

  Color get colorPaletteOrange900 => const Color(0xFF331B00);

  Color get colorPaletteOrange500Opacity70 =>
      const Color.fromRGBO(255, 136, 0, 0.7);

  Color get colorPaletteOrange500Opacity15 =>
      const Color.fromRGBO(255, 136, 0, 0.15);

  Color get colorPaletteRed25 => const Color(0xFFFFF2F2);

  Color get colorPaletteRed50 => const Color(0xFFFFE6E6);

  Color get colorPaletteRed75 => const Color(0xFFFFD9D9);

  Color get colorPaletteRed100 => const Color(0xFFFFCCCC);

  Color get colorPaletteRed150 => const Color(0xFFFFB3B3);

  Color get colorPaletteRed200 => const Color(0xFFFF9999);

  Color get colorPaletteRed300 => const Color(0xFFFF6666);

  Color get colorPaletteRed400 => const Color(0xFFFF3333);

  Color get colorPaletteRed500 => const Color(0xFFFF0000);

  Color get colorPaletteRed600 => const Color(0xFFCC0000);

  Color get colorPaletteRed700 => const Color(0xFF990000);

  Color get colorPaletteRed800 => const Color(0xFF660000);

  Color get colorPaletteRed825 => const Color(0xFF590000);

  Color get colorPaletteRed850 => const Color(0xFF4D0000);

  Color get colorPaletteRed875 => const Color(0xFF400000);

  Color get colorPaletteRed900 => const Color(0xFF330000);

  Color get colorPaletteRed500Opacity70 => const Color.fromRGBO(255, 0, 0, 0.7);

  Color get colorPaletteRed500Opacity15 =>
      const Color.fromRGBO(255, 0, 0, 0.15);

  Color get colorPaletteGreen25 => const Color(0xFFF2FBF5);

  Color get colorPaletteGreen50 => const Color(0xFFE6F8EC);

  Color get colorPaletteGreen75 => const Color(0xFFD9F4E2);

  Color get colorPaletteGreen100 => const Color(0xFFCCF0D8);

  Color get colorPaletteGreen150 => const Color(0xFFB3E9C5);

  Color get colorPaletteGreen200 => const Color(0xFF99E2B2);

  Color get colorPaletteGreen300 => const Color(0xFF66D38B);

  Color get colorPaletteGreen400 => const Color(0xFF33C565);

  Color get colorPaletteGreen500 => const Color(0xFF00B63E);

  Color get colorPaletteGreen600 => const Color(0xFF009232);

  Color get colorPaletteGreen700 => const Color(0xFF006D25);

  Color get colorPaletteGreen800 => const Color(0xFF004919);

  Color get colorPaletteGreen825 => const Color(0xFF004016);

  Color get colorPaletteGreen850 => const Color(0xFF003713);

  Color get colorPaletteGreen875 => const Color(0xFF002E10);

  Color get colorPaletteGreen900 => const Color(0xFF00240C);

  Color get colorPaletteGreen500Opacity70 =>
      const Color.fromRGBO(0, 182, 62, 0.7);

  Color get colorPaletteGreen500Opacity15 =>
      const Color.fromRGBO(0, 182, 62, 0.15);

  Color get colorPaletteBlue25 => const Color(0xFFF2F8FE);

  Color get colorPaletteBlue50 => const Color(0xFFE5F1FE);

  Color get colorPaletteBlue75 => const Color(0xFFD9EAFD);

  Color get colorPaletteBlue100 => const Color(0xFFCCE2FD);

  Color get colorPaletteBlue150 => const Color(0xFFB3D4FC);

  Color get colorPaletteBlue200 => const Color(0xFF99C6FB);

  Color get colorPaletteBlue300 => const Color(0xFF66A9F8);

  Color get colorPaletteBlue400 => const Color(0xFF338DF6);

  Color get colorPaletteBlue500 => const Color(0xFF0070F4);

  Color get colorPaletteBlue600 => const Color(0xFF005AC3);

  Color get colorPaletteBlue700 => const Color(0xFF004392);

  Color get colorPaletteBlue800 => const Color(0xFF002D62);

  Color get colorPaletteBlue825 => const Color(0xFF002755);

  Color get colorPaletteBlue850 => const Color(0xFF002249);

  Color get colorPaletteBlue875 => const Color(0xFF001C3D);

  Color get colorPaletteBlue900 => const Color(0xFF001631);

  Color get colorPaletteBlue500Opacity70 =>
      const Color.fromRGBO(0, 112, 244, 0.7);

  Color get colorPaletteBlue500Opacity15 =>
      const Color.fromRGBO(0, 112, 244, 0.15);

  Color get colorPaletteGray0 => const Color(0xFFFFFFFF);

  Color get colorPaletteGray25 => const Color(0xFFF7F8F9);

  Color get colorPaletteGray50 => const Color(0xFFF0F1F3);

  Color get colorPaletteGray75 => const Color(0xFFE8EAED);

  Color get colorPaletteGray100 => const Color(0xFFE1E3E6);

  Color get colorPaletteGray150 => const Color(0xFFD1D5DA);

  Color get colorPaletteGray200 => const Color(0xFFC2C7CE);

  Color get colorPaletteGray300 => const Color(0xFFA4ACB5);

  Color get colorPaletteGray400 => const Color(0xFF85909D);

  Color get colorPaletteGray500 => const Color(0xFF677484);

  Color get colorPaletteGray600 => const Color(0xFF525D6A);

  Color get colorPaletteGray700 => const Color(0xFF3E464F);

  Color get colorPaletteGray800 => const Color(0xFF292E35);

  Color get colorPaletteGray825 => const Color(0xFF24292E);

  Color get colorPaletteGray850 => const Color(0xFF1F2328);

  Color get colorPaletteGray875 => const Color(0xFF1A1D21);

  Color get colorPaletteGray900 => const Color(0xFF15171A);

  Color get colorPaletteGray1000 => const Color(0xFF000000);

  Color get colorPaletteGray500Opacity70 =>
      const Color.fromRGBO(103, 116, 132, 0.7);

  Color get colorPaletteGray500Opacity15 =>
      const Color.fromRGBO(103, 116, 132, 0.15);

  Color get colorPaletteGray200Opacity70 =>
      const Color.fromRGBO(194, 199, 206, 0.7);

  Color get colorPaletteGray50Opacity0 =>
      const Color.fromRGBO(240, 241, 243, 0.0);

  Color get colorPaletteGrayWhiteOpacity15 =>
      const Color.fromRGBO(255, 255, 255, 0.15);

  Color get colorPaletteGrayWhiteOpacity25 =>
      const Color.fromRGBO(255, 255, 255, 0.25);

  Color get colorPaletteGrayBlackOpacity15 =>
      const Color.fromRGBO(0, 0, 0, 0.15);

  Color get colorPaletteGrayBlackOpacity25 =>
      const Color.fromRGBO(0, 0, 0, 0.25);

  Color get colorPaletteGrayWhiteOpacity70 =>
      const Color.fromRGBO(255, 255, 255, 0.7);

  Color get colorPaletteGrayBlackOpacity70 =>
      const Color.fromRGBO(0, 0, 0, 0.7);

  Color get colorPaletteGrayBlackOpacity40 =>
      const Color.fromRGBO(0, 0, 0, 0.4);

  Color get colorPalettePurple25 => const Color(0xFFFBF8FF);

  Color get colorPalettePurple50 => const Color(0xFFF7F1FE);

  Color get colorPalettePurple75 => const Color(0xFFF3EAFE);

  Color get colorPalettePurple100 => const Color(0xFFEFE3FE);

  Color get colorPalettePurple150 => const Color(0xFFE7D5FD);

  Color get colorPalettePurple200 => const Color(0xFFDFC7FD);

  Color get colorPalettePurple300 => const Color(0xFFCEAAFB);

  Color get colorPalettePurple400 => const Color(0xFFBE8EFA);

  Color get colorPalettePurple500 => const Color(0xFFAE72F9);

  Color get colorPalettePurple600 => const Color(0xFF8B5BC7);

  Color get colorPalettePurple700 => const Color(0xFF684495);

  Color get colorPalettePurple800 => const Color(0xFF462E64);

  Color get colorPalettePurple825 => const Color(0xFF3D2857);

  Color get colorPalettePurple850 => const Color(0xFF34224B);

  Color get colorPalettePurple875 => const Color(0xFF2C1D3E);

  Color get colorPalettePurple900 => const Color(0xFF231732);

  Color get colorPalettePurple500Opacity70 =>
      const Color.fromRGBO(174, 114, 249, 0.7);

  Color get colorPalettePurple500Opacity15 =>
      const Color.fromRGBO(174, 114, 249, 0.15);

  Color get colorPaletteViolet25 => const Color(0xFFFAF6FD);

  Color get colorPaletteViolet50 => const Color(0xFFF4EEFC);

  Color get colorPaletteViolet75 => const Color(0xFFEFE5FA);

  Color get colorPaletteViolet100 => const Color(0xFFE9DDF8);

  Color get colorPaletteViolet150 => const Color(0xFFDECCF5);

  Color get colorPaletteViolet200 => const Color(0xFFD3BBF2);

  Color get colorPaletteViolet300 => const Color(0xFFBE98EB);

  Color get colorPaletteViolet400 => const Color(0xFFA876E5);

  Color get colorPaletteViolet500 => const Color(0xFF9254DE);

  Color get colorPaletteViolet600 => const Color(0xFF7543B2);

  Color get colorPaletteViolet700 => const Color(0xFF583285);

  Color get colorPaletteViolet800 => const Color(0xFF3A2259);

  Color get colorPaletteViolet825 => const Color(0xFF331D4E);

  Color get colorPaletteViolet850 => const Color(0xFF2C1943);

  Color get colorPaletteViolet875 => const Color(0xFF251538);

  Color get colorPaletteViolet900 => const Color(0xFF1D112C);

  Color get colorPaletteViolet500Opacity70 =>
      const Color.fromRGBO(146, 84, 222, 0.7);

  Color get colorPaletteViolet500Opacity15 =>
      const Color.fromRGBO(146, 84, 222, 0.15);

  Color get colorPaletteCyan25 => const Color(0xFFF5FDFC);

  Color get colorPaletteCyan50 => const Color(0xFFEBFAFA);

  Color get colorPaletteCyan75 => const Color(0xFFE1F8F7);

  Color get colorPaletteCyan100 => const Color(0xFFD7F5F4);

  Color get colorPaletteCyan150 => const Color(0xFFC3F1EF);

  Color get colorPaletteCyan200 => const Color(0xFFAFECE9);

  Color get colorPaletteCyan300 => const Color(0xFF86E2DF);

  Color get colorPaletteCyan400 => const Color(0xFF5ED9D4);

  Color get colorPaletteCyan500 => const Color(0xFF36CFC9);

  Color get colorPaletteCyan600 => const Color(0xFF2BA6A1);

  Color get colorPaletteCyan700 => const Color(0xFF207C79);

  Color get colorPaletteCyan800 => const Color(0xFF165350);

  Color get colorPaletteCyan825 => const Color(0xFF134846);

  Color get colorPaletteCyan850 => const Color(0xFF103E3C);

  Color get colorPaletteCyan875 => const Color(0xFF0E3432);

  Color get colorPaletteCyan900 => const Color(0xFF0B2928);

  Color get colorPaletteCyan500Opacity70 =>
      const Color.fromRGBO(54, 207, 201, 0.7);

  Color get colorPaletteCyan500Opacity15 =>
      const Color.fromRGBO(54, 207, 201, 0.15);

  double get numberRangePercentPill => 200;

  double get numberRangeXS1 => 2;

  double get numberRangeXS2 => 4;

  double get numberRangeXS3 => 6;

  double get numberRangeXS1H => 1;

  double get numberRangeXS2H => 3;

  double get numberRangeS1 => 8;

  double get numberRangeS2 => 12;

  double get numberRangeS3 => 16;

  double get numberRangeS4 => 20;

  double get numberRangeS2H => 10;

  double get numberRangeS3H => 14;

  double get numberRangeS4H => 18;

  double get numberRangeS5H => 22;

  double get numberRangeM1 => 24;

  double get numberRangeM2 => 32;

  double get numberRangeM3 => 40;

  double get numberRangeM4 => 48;

  double get numberRangeM2H => 28;

  double get numberRangeM3H => 36;

  double get numberRangeM4H => 44;

  double get numberRangeM5H => 52;

  double get numberRangeL1 => 56;

  double get numberRangeL2 => 68;

  double get numberRangeL3 => 80;

  double get numberRangeL4 => 92;

  double get numberRangeL2H => 62;

  double get numberRangeL3H => 74;

  double get numberRangeL4H => 86;

  double get numberRangeL5H => 98;

  double get numberRangeXL1 => 104;

  double get numberRangeXL2 => 120;

  double get numberRangeXL3 => 136;

  double get numberRangeXL4 => 152;

  double get numberRangeXL2H => 112;

  double get numberRangeXL3H => 128;

  double get numberRangeXL4H => 144;

  double get numberRangeXL5H => 160;

  double get fontSize3 => 12;

  double get fontSize4 => 16;

  double get fontSize5 => 20;

  double get fontSize6 => 24;

  double get fontSize7 => 28;

  double get fontSize8 => 32;

  double get fontSize9 => 36;

  double get fontSize10 => 40;

  double get fontSize12 => 48;

  double get fontSize14 => 56;

  double get fontSize2H => 10;

  double get fontSize3H => 14;

  double get fontSize4H => 18;

  double get fontLineHeight3 => 12;

  double get fontLineHeight4 => 16;

  double get fontLineHeight5 => 20;

  double get fontLineHeight6 => 24;

  double get fontLineHeight7 => 28;

  double get fontLineHeight8 => 32;

  double get fontLineHeight9 => 36;

  double get fontLineHeight10 => 40;

  double get fontLineHeight12 => 48;

  double get fontLineHeight15 => 60;

  double get fontLineHeight18 => 72;

  double get fontParagraphSpacing1 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing2 => 12;

  double get fontParagraphSpacing3 => 14;

  double get fontParagraphSpacing4 => 16;

  double get fontParagraphSpacing5 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing6 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing7 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing8 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing9 => fontParagraphSpacingAuto;

  double get fontParagraphSpacing10 => fontParagraphSpacingAuto;

  double get fontParagraphSpacingAuto => 0;

  double get fontWeightExtraBold => 800;

  double get fontWeightBold => 700;

  double get fontWeightSemiBold => 600;

  double get fontWeightMedium => 500;

  double get fontWeightRegular => 400;

  double get spacing1 => 0;

  Color get bGTransparentDefault => colorTransparent;

  Color get bGTransparentWhiteOpacity15 => colorPaletteGrayWhiteOpacity15;

  Color get bGTransparentWhiteOpacity70 => colorPaletteGrayWhiteOpacity70;

  Color get bGTransparentBlackOpacity15 => colorPaletteGrayBlackOpacity15;

  Color get bGTransparentBlackOpacity70 => colorPaletteGrayBlackOpacity70;

  Color get bGStatusCompleteDefault => bGSuccessSolidDefault;

  Color get bGStatusCompleteDisabled => bGSuccessSolidDisabled;

  Color get bGStatusProcessDefault => bGInfoSolidDefault;

  Color get bGStatusProcessDisabled => bGInfoSolidDisabled;

  Color get bGStatusPendingDefault => bGWarningSolidDefault;

  Color get bGStatusPendingDisabled => bGWarningSolidDisabled;

  Color get bGStatusAlertDefault => bGDangerSolidDefault;

  Color get bGStatusAlertDisabled => bGDangerSolidDisabled;

  Color get bGStatusInActiveDefault => bGNeutralSolidDefault;

  Color get bGStatusInActiveDisabled => bGNeutralSolidDisabled;

  Color get bGLayerLevel0 => neutralWhite;

  Color get bGLayerLevel1 => neutral25;

  Color get bGLayerLevel2 => neutral50;

  Color get bGLayerLevel3 => neutral75;

  Color get bGLayerOverlay => colorPaletteGrayBlackOpacity40;

  Color get bGFormDefaultInput => neutralWhite;

  Color get bGFormDefaultSearch => neutral50;

  Color get bGFormDefaultSearchonLayer2 => neutral75;

  Color get bGFormActivated => neutralWhite;

  Color get bGFormDisabled => neutral50;

  Color get bGFormReadOnly => neutral25;

  Color get bGPrimarySolidDefault => primary500;

  Color get bGPrimarySolidHover => primary600;

  Color get bGPrimarySolidPressed => primary700;

  Color get bGPrimarySolidDisabled => primary200;

  Color get bGPrimaryFadedDefault => primary50;

  Color get bGPrimaryFadedHover => primary100;

  Color get bGPrimaryFadedPressed => primary150;

  Color get bGPrimaryFadedDisabled => bGPrimaryFadedDefault;

  Color get bGPrimaryTertiaryDefault => bGTransparentDefault;

  Color get bGPrimaryTertiaryHover => primary50;

  Color get bGPrimaryTertiaryPressed => primary100;

  Color get bGPrimaryTertiaryDisabled => bGPrimaryTertiaryDefault;

  Color get bGPrimaryQuataryDefault => primary25;

  Color get bGPrimaryQuataryHover => primary75;

  Color get bGPrimaryQuataryPressed => primary150;

  Color get bGPrimaryQuataryDisabled => bGPrimaryQuataryDefault;

  Color get bGPrimaryStrongDefault => primary600;

  Color get bGPrimaryStrongHover => primary700;

  Color get bGPrimaryStrongPressed => primary800;

  Color get bGPrimaryStrongDisabled => primary400;

  Color get bGPrimaryStrongestDefault => primary850;

  Color get bGSecondarySolidDefault => secondary500;

  Color get bGSecondarySolidHover => secondary600;

  Color get bGSecondarySolidPressed => secondary700;

  Color get bGSecondarySolidDisabled => secondary200;

  Color get bGSecondaryFadedDefault => secondary50;

  Color get bGSecondaryFadedHover => secondary100;

  Color get bGSecondaryFadedPressed => secondary150;

  Color get bGSecondaryFadedDisabled => bGSecondaryFadedDefault;

  Color get bGSecondaryTertiaryDefault => bGTransparentDefault;

  Color get bGSecondaryTertiaryHover => secondary50;

  Color get bGSecondaryTertiaryPressed => secondary100;

  Color get bGSecondaryTertiaryDisabled => bGPrimaryTertiaryDefault;

  Color get bGSecondaryStrongDefault => secondary600;

  Color get bGSecondaryStrongHover => secondary700;

  Color get bGSecondaryStrongPressed => secondary800;

  Color get bGSecondaryStrongDisabled => secondary400;

  Color get bGSecondaryStrongestDefault => secondary850;

  Color get bGSuccessSolidDefault => success500;

  Color get bGSuccessSolidHover => success600;

  Color get bGSuccessSolidPressed => success700;

  Color get bGSuccessSolidDisabled => success200;

  Color get bGSuccessFadedDefault => success50;

  Color get bGSuccessFadedHover => success100;

  Color get bGSuccessFadedPressed => success150;

  Color get bGSuccessFadedDisabled => bGSuccessFadedDefault;

  Color get bGSuccessTertiaryDefault => bGTransparentDefault;

  Color get bGSuccessTertiaryHover => success50;

  Color get bGSuccessTertiaryPressed => success100;

  Color get bGSuccessTertiaryDisabled => bGSuccessTertiaryDefault;

  Color get bGSuccessQuartaryDefault => success25;

  Color get bGSuccessQuartaryHover => success75;

  Color get bGSuccessQuartaryPressed => success150;

  Color get bGSuccessQuartaryDisabled => bGSuccessQuartaryDefault;

  Color get bGSuccessStrongDefault => success600;

  Color get bGSuccessStrongHover => success700;

  Color get bGSuccessStrongPressed => success800;

  Color get bGSuccessStrongDisabled => success400;

  Color get bGInfoSolidDefault => info500;

  Color get bGInfoSolidHover => info600;

  Color get bGInfoSolidPressed => info700;

  Color get bGInfoSolidDisabled => info200;

  Color get bGInfoFadedDefault => info50;

  Color get bGInfoFadedHover => info100;

  Color get bGInfoFadedPressed => info150;

  Color get bGInfoFadedDisabled => bGInfoFadedDefault;

  Color get bGInfoTertiaryDefault => bGTransparentDefault;

  Color get bGInfoTertiaryHover => info50;

  Color get bGInfoTertiaryPressed => info100;

  Color get bGInfoTertiaryDisabled => bGInfoTertiaryDefault;

  Color get bGInfoQuartaryDefault => info25;

  Color get bGInfoQuartaryHover => info75;

  Color get bGInfoQuartaryPressed => info150;

  Color get bGInfoQuartaryDisabled => bGInfoQuartaryDefault;

  Color get bGInfoStrongDefault => info600;

  Color get bGInfoStrongHover => info700;

  Color get bGInfoStrongPressed => info800;

  Color get bGInfoStrongDisabled => info400;

  Color get bGWarningSolidDefault => warning500;

  Color get bGWarningSolidHover => warning600;

  Color get bGWarningSolidPressed => warning700;

  Color get bGWarningSolidDisabled => warning200;

  Color get bGWarningFadedDefault => warning50;

  Color get bGWarningFadedHover => warning100;

  Color get bGWarningFadedPressed => warning150;

  Color get bGWarningFadedDisabled => bGWarningFadedDefault;

  Color get bGWarningTertiaryDefault => bGTransparentDefault;

  Color get bGWarningTertiaryHover => warning50;

  Color get bGWarningTertiaryPressed => warning100;

  Color get bGWarningTertiaryDisabled => bGWarningTertiaryDefault;

  Color get bGWarningQuartaryDefault => warning25;

  Color get bGWarningQuartaryHover => warning75;

  Color get bGWarningQuartaryPressed => warning150;

  Color get bGWarningQuartaryDisabled => bGWarningQuartaryDefault;

  Color get bGWarningStrongDefault => warning600;

  Color get bGWarningStrongHover => warning700;

  Color get bGWarningStrongPressed => warning800;

  Color get bGWarningStrongDisabled => warning400;

  Color get bGDangerSolidDefault => danger500;

  Color get bGDangerSolidHover => danger600;

  Color get bGDangerSolidPressed => danger700;

  Color get bGDangerSolidDisabled => danger200;

  Color get bGDangerFadedDefault => danger50;

  Color get bGDangerFadedHover => danger100;

  Color get bGDangerFadedPressed => danger150;

  Color get bGDangerFadedDisabled => bGDangerFadedDefault;

  Color get bGDangerTertiaryDefault => bGTransparentDefault;

  Color get bGDangerTertiaryHover => danger50;

  Color get bGDangerTertiaryPressed => danger100;

  Color get bGDangerTertiaryDisabled => bGDangerTertiaryDefault;

  Color get bGDangerQuartaryDefault => danger25;

  Color get bGDangerQuartaryHover => danger75;

  Color get bGDangerQuartaryPressed => danger150;

  Color get bGDangerQuartaryDisabled => bGDangerQuartaryDefault;

  Color get bGDangerStrongDefault => danger600;

  Color get bGDangerStrongHover => danger700;

  Color get bGDangerStrongPressed => danger800;

  Color get bGDangerStrongDisabled => danger400;

  Color get bGPromotionSolidDefault => promotion500;

  Color get bGPromotionSolidHover => promotion600;

  Color get bGPromotionSolidPressed => promotion700;

  Color get bGPromotionSolidDisabled => promotion200;

  Color get bGPromotionFadedDefault => promotion50;

  Color get bGPromotionFadedHover => promotion100;

  Color get bGPromotionFadedPressed => promotion150;

  Color get bGPromotionFadedDisabled => bGPromotionFadedDefault;

  Color get bGPromotionTertiaryDefault => bGTransparentDefault;

  Color get bGPromotionTertiaryHover => promotion50;

  Color get bGPromotionTertiaryPressed => promotion100;

  Color get bGPromotionTertiaryDisabled => bGPromotionTertiaryDefault;

  Color get bGPromotionQuartaryDefault => promotion25;

  Color get bGPromotionQuartaryHover => promotion75;

  Color get bGPromotionQuartaryPressed => promotion150;

  Color get bGPromotionQuartaryDisabled => bGPromotionQuartaryDefault;

  Color get bGPromotionStrongDefault => promotion600;

  Color get bGPromotionStrongHover => promotion700;

  Color get bGPromotionStrongPressed => promotion800;

  Color get bGPromotionStrongDisabled => promotion400;

  Color get bGNeutralSolidDefault => neutral500;

  Color get bGNeutralSolidHover => neutral600;

  Color get bGNeutralSolidPressed => neutral700;

  Color get bGNeutralSolidDisabled => neutral200;

  Color get bGNeutralFadedDefault => neutral50;

  Color get bGNeutralFadedHover => neutral100;

  Color get bGNeutralFadedPressed => neutral150;

  Color get bGNeutralFadedDisabled => bGNeutralFadedDefault;

  Color get bGNeutralTertiaryDefault => bGTransparentDefault;

  Color get bGNeutralTertiaryHover => neutral50;

  Color get bGNeutralTertiaryPressed => neutral100;

  Color get bGNeutralTertiaryDisabled => bGNeutralTertiaryDefault;

  Color get bGNeutralQuartaryDefault => neutral25;

  Color get bGNeutralQuartaryHover => neutral75;

  Color get bGNeutralQuartaryPressed => neutral150;

  Color get bGNeutralQuartaryDisabled => bGNeutralQuartaryDefault;

  Color get bGNeutralStrongDefault => neutral600;

  Color get bGNeutralStrongHover => neutral700;

  Color get bGNeutralStrongPressed => neutral800;

  Color get bGNeutralStrongDisabled => neutral400;

  Color get bGSelectorDefault => primary25;

  Color get bGSelectorHover => primary50;

  Color get bGTableOdd => neutralWhite;

  Color get bGTableEven => neutral25;

  Color get bGTableHover => neutral50;

  Color get bGTableHoverLinenear => neutral50Opacity0;

  Color get bGTableActivated => primary50;

  Color get bGTableChildActivated => primary25;

  Color get bGTableHeader => primary50;

  Color get bGTableHeaderChild => neutral50;

  Color get bGTableSummary => bGLayerLevel0;

  Color get bGKeyboardContainer => colorPaletteGray200;

  Color get bGKeyboardNormalDefault => bGLayerLevel0;

  Color get bGKeyboardNormalPressed => bGNeutralFadedPressed;

  Color get bGKeyboardPrimaryDefault => bGPrimarySolidDefault;

  Color get bGKeyboardPrimaryPressed => bGPrimarySolidPressed;

  Color get bGKeyboardSecondaryDefault => neutral300;

  Color get bGKeyboardSecondaryPressed => neutral400;

  Color get bGKeyboardTertiaryDefault => neutral100;

  Color get bGKeyboardTertiaryPressed => neutral200;

  Color get iconNeutralPrimaryAction => textNeutralStrong;

  Color get iconNeutralSecondaryAction => textNeutralTertiary;

  Color get iconNeutralLabel => textNeutralSecondary;

  Color get iconNeutralDisabled => textNeutralDisabled;

  Color get iconNeutralonSolidPrimaryAction => textNeutralonSolidDefault;

  Color get iconNeutralonSolidSecondaryAction => textNeutralonSolidQuartary;

  Color get iconNeutralonSolidLabel => textNeutralonSolidSecondary;

  Color get iconNeutralonSolidDisabled => textNeutralonSolidDisabled;

  Color get iconNeutralonFadedPrimaryAction => textNeutralonFadedDefault;

  Color get iconNeutralonFadedSecondaryAction => textNeutralonFadedQuartary;

  Color get iconNeutralonFadedLabel => textNeutralonFadedSecondary;

  Color get iconNeutralonFadedDisabled => textNeutralonFadedDisabled;

  Color get iconNeutralonDisabledDisabled => textNeutralonDisabledDisabled;

  Color get iconPrimaryPrimaryAction => textPrimaryonWhitePrimary;

  Color get iconPrimarySecondaryAction => textPrimaryonWhiteQuartary;

  Color get iconPrimaryLabel => textPrimaryActionDefault;

  Color get iconPrimaryDisabled => textPrimaryonWhiteDisabled;

  Color get iconPrimaryonSolidPrimaryAction => textPrimaryonSolidPrimary;

  Color get iconPrimaryonSolidSecondaryAction => textPrimaryonSolidQuartary;

  Color get iconPrimaryonSolidLabel => textPrimaryonSolidSecondary;

  Color get iconPrimaryonSolidDisabled => textPrimaryonSolidDisabled;

  Color get iconPrimaryonFadedPrimaryAction => textPrimaryonFadedPrimary;

  Color get iconPrimaryonFadedSecondaryAction => textPrimaryonFadedQuartary;

  Color get iconPrimaryonFadedLabel => textPrimaryonFadedSecondary;

  Color get iconPrimaryonFadedDisabled => textPrimaryonFadedDisabled;

  Color get iconPrimaryonDisabledDisabled => textPrimaryonDisabledDisabled;

  Color get iconSecondaryPrimaryAction => textSecondaryonWhitePrimary;

  Color get iconSecondarySecondaryAction => textSecondaryonWhiteQuartary;

  Color get iconSecondaryLabel => textSecondaryActionDefault;

  Color get iconSecondaryDisabled => textSecondaryonWhiteDisabled;

  Color get iconSecondaryonSolidPrimaryAction => textSecondaryonSolidPrimary;

  Color get iconSecondaryonSolidSecondaryAction => textSecondaryonSolidQuartary;

  Color get iconSecondaryonSolidLabel => textSecondaryonSolidSecondary;

  Color get iconSecondaryonSolidDisabled => textSecondaryonSolidDisabled;

  Color get iconSecondaryonFadedPrimaryAction => textSecondaryonFadedPrimary;

  Color get iconSecondaryonFadedSecondaryAction => textSecondaryonFadedQuartary;

  Color get iconSecondaryonFadedLabel => textSecondaryonFadedSecondary;

  Color get iconSecondaryonFadedDisabled => textSecondaryonFadedDisabled;

  Color get iconSecondaryonDisabledDisabled => textSecondaryonDisabledDisabled;

  Color get iconInfoPrimaryAction => textInfoonWhitePrimary;

  Color get iconInfoSecondaryAction => textInfoonWhiteQuartary;

  Color get iconInfoLabel => textInfoActionDefault;

  Color get iconInfoDisabled => textInfoonWhiteDisabled;

  Color get iconInfoonSolidPrimaryAction => textInfoonSolidPrimary;

  Color get iconInfoonSolidSecondaryAction => textInfoonSolidQuantary;

  Color get iconInfoonSolidLabel => textInfoonSolidSecondary;

  Color get iconInfoonSolidDisabled => textInfoonSolidDisabled;

  Color get iconInfoonFadedPrimaryAction => textInfoonFadedPrimary;

  Color get iconInfoonFadedSecondaryAction => textInfoonFadedQuartary;

  Color get iconInfoonFadedLabel => textInfoonFadedSecondary;

  Color get iconInfoonFadedDisabled => textInfoonFadedDisabled;

  Color get iconInfoonDisabledDisabled => textInfoonDisabledDisabled;

  Color get iconSuccessPrimaryAction => textSuccessonWhitePrimary;

  Color get iconSuccessSecondaryAction => textSuccessonWhiteQuartary;

  Color get iconSuccessLabel => textSuccessActionDefault;

  Color get iconSuccessDisabled => textSuccessonWhiteDisabled;

  Color get iconSuccessonSolidPrimaryAction => textSuccessonSolidPrimary;

  Color get iconSuccessonSolidSecondaryAction => textSuccessonSolidQuartary;

  Color get iconSuccessonSolidLabel => textSuccessonSolidSecondary;

  Color get iconSuccessonSolidDisabled => textSuccessonSolidDisabled;

  Color get iconSuccessonFadedPrimaryAction => textSuccessonFadedPrimary;

  Color get iconSuccessonFadedSecondaryAction => textSuccessonFadedQuartary;

  Color get iconSuccessonFadedLabel => textSuccessonFadedSecondary;

  Color get iconSuccessonFadedDisabled => textSuccessonFadedDisabled;

  Color get iconSuccessonDisabledDisabled => textSuccessonDisabledDisabled;

  Color get iconWarningPrimaryAction => textWarningonWhitePrimary;

  Color get iconWarningSecondaryAction => textWarningonWhiteQuartary;

  Color get iconWarningLabel => textWarningActionDefault;

  Color get iconWarningDisabled => textWarningonWhiteDisabled;

  Color get iconWarningonSolidPrimaryAction => textWarningonSolidPrimary;

  Color get iconWarningonSolidSecondaryAction => textWarningonSolidQuartary;

  Color get iconWarningonSolidLabel => textWarningonSolidSecondary;

  Color get iconWarningonSolidDisabled => textWarningonSolidDisabled;

  Color get iconWarningonFadedPrimaryAction => textWarningonFadedPrimary;

  Color get iconWarningonFadedSecondaryAction => textWarningonFadedQuartary;

  Color get iconWarningonFadedLabel => textWarningonFadedSecondary;

  Color get iconWarningonFadedDisabled => textWarningonFadedDisabled;

  Color get iconWarningonDisabledDisabled => textWarningonDisabledDisabled;

  Color get iconDangerPrimaryAction => textDangeronWhitePrimary;

  Color get iconDangerSecondaryAction => textDangeronWhiteQuartary;

  Color get iconDangerLabel => textDangerActionDefault;

  Color get iconDangerDisabled => textDangeronWhiteDisabled;

  Color get iconDangeronSolidPrimaryAction => textDangeronSolidPrimary;

  Color get iconDangeronSolidSecondaryAction => textDangeronSolidQuartary;

  Color get iconDangeronSolidLabel => textDangeronSolidSecondary;

  Color get iconDangeronSolidDisabled => textDangeronSolidDisabled;

  Color get iconDangeronFadedPrimaryAction => textDangeronFadedPrimary;

  Color get iconDangeronFadedSecondaryAction => textDangeronFadedQuartary;

  Color get iconDangeronFadedLabel => textDangeronFadedSecondary;

  Color get iconDangeronFadedDisabled => textDangeronFadedDisabled;

  Color get iconDangeronDisabledDisabled => textDangeronDisabledDisabled;

  Color get iconPromotionPrimaryAction => textPromotiononWhitePrimary;

  Color get iconPromotionSecondaryAction => textPromotiononWhiteQuartary;

  Color get iconPromotionLabel => textPromotionActionDefault;

  Color get iconPromotiononSolidPrimaryAction => textPromotiononSolidPrimary;

  Color get iconPromotiononSolidSecondaryAction => textPromotiononSolidQuartary;

  Color get iconPromotiononSolidLabel => textPromotiononSolidSecondary;

  Color get iconPromotiononSolidDisabled => textPromotiononSolidDisabled;

  Color get iconPromotionDisabled => textPromotiononWhiteDisabled;

  Color get iconPromotiononFadedPrimaryAction => textPromotiononFadedPrimary;

  Color get iconPromotiononFadedSecondaryAction => textPromotiononFadedQuartary;

  Color get iconPromotiononFadedLabel => textPromotiononFadedSecondary;

  Color get iconPromotiononFadedDisabled => textPromotiononFadedDisabled;

  Color get iconPromotiononDisabledDisabled => textPromotiononDisabledDisabled;

  Color get dividerBlock => neutral75;

  Color get dividerPrimary => primary75;

  Color get dividerSecondary => secondary75;

  Color get dividerInformation => info75;

  Color get dividerSuccess => success75;

  Color get dividerWarning => warning75;

  Color get dividerDanger => danger75;

  Color get dividerPromotion => promotion75;

  Color get dividerDot => neutral150;

  Color get borderTableData => dividerBlock;

  Color get borderTableTitleScrolled => primary150;

  Color get borderTableTitleDefault => primary100;

  Color get borderTableSummary => neutral75;

  Color get borderTableContainer => dividerBlock;

  Color get borderTableActivated => primary500;

  Color get borderNeutralDefault => neutral500;

  Color get borderNeutralDisabled => neutral100;

  Color get borderNeutralFaded => neutral150;

  Color get borderNeutralSecondary => neutral300;

  Color get borderFormDefault => neutral150;

  Color get borderFormHover => neutral300;

  Color get borderFormFocused => borderPrimaryDefault;

  Color get borderFormTyping => borderPrimaryDefault;

  Color get borderFormError => borderDangerDefault;

  Color get borderFormRequired => borderDangerDefault;

  Color get borderFormDisabled => borderNeutralDisabled;

  Color get borderFormSuccess => borderSuccessDefault;

  Color get borderFormBlock => neutral100;

  Color get borderFormBlockHover => neutral200;

  Color get borderPrimaryDefault => primary500;

  Color get borderPrimaryDisabled => primary100;

  Color get borderPrimaryFaded => primary150;

  Color get borderPrimarySecondary => primary300;

  Color get borderSuccessDefault => success500;

  Color get borderSuccessDisabled => success100;

  Color get borderSuccessFaded => success150;

  Color get borderSuccessSecondary => success300;

  Color get borderInformationDefault => info500;

  Color get borderInformationDisabled => info100;

  Color get borderInformationFaded => info150;

  Color get borderInformationSecondary => info300;

  Color get borderWarningDefault => warning500;

  Color get borderWarningDisabled => warning100;

  Color get borderWarningFaded => warning150;

  Color get borderWarningSecondary => warning300;

  Color get borderDangerDefault => danger500;

  Color get borderDangerDisabled => danger100;

  Color get borderDangerFaded => danger150;

  Color get borderDangerSecondary => danger300;

  Color get borderPromotionDefault => promotion500;

  Color get borderPromotionDisabled => promotion100;

  Color get borderPromotionFaded => promotion150;

  Color get borderPromotionSecondary => promotion300;

  Color get borderonSolid => neutralWhite;

  Color get borderTreeDefault => neutral75;

  Color get borderTreeHover => primary500;

  Color get borderSecondaryDefault => secondary500;

  Color get borderSecondaryDisabled => secondary100;

  Color get borderSecondaryFaded => secondary150;

  Color get borderSecondarySecondary => secondary300;

  Color get textNeutralBase => neutral900;

  Color get textNeutralStrong => neutral700;

  Color get textNeutralReadOnly => neutral700;

  Color get textNeutralLabel => neutral600;

  Color get textNeutralSecondary => neutral500;

  Color get textNeutralDefault => neutral500;

  Color get textNeutralTertiary => neutral400;

  Color get textNeutralPlaceholder => textNeutralTertiary;

  Color get textNeutralQuartary => neutral300;

  Color get textNeutralDisabled => neutral200;

  Color get textNeutralonSolidDefault => neutralWhite;

  Color get textNeutralonSolidSecondary => neutral50;

  Color get textNeutralonSolidTertiary => neutral100;

  Color get textNeutralonSolidQuartary => neutral200;

  Color get textNeutralonSolidDisabled => neutral300;

  Color get textNeutralonDisabledDisabled => neutral50;

  Color get textNeutralonFadedDefault => textNeutralBase;

  Color get textNeutralonFadedSecondary => neutral600;

  Color get textNeutralonFadedTertiary => neutral500;

  Color get textNeutralonFadedQuartary => neutral400;

  Color get textNeutralonFadedDisabled => neutral300;

  Color get textPrimaryActionDefault => primary500;

  Color get textPrimaryActionHover => primary600;

  Color get textPrimaryonWhitePrimary => primary600;

  Color get textPrimaryonWhiteSecondary => primary500;

  Color get textPrimaryonWhiteTertiary => primary400;

  Color get textPrimaryonWhiteQuartary => primary300;

  Color get textPrimaryonWhiteDisabled => primary200;

  Color get textPrimaryonSolidPrimary => neutralWhite;

  Color get textPrimaryonSolidSecondary => primary50;

  Color get textPrimaryonSolidTertiary => primary100;

  Color get textPrimaryonSolidQuartary => primary200;

  Color get textPrimaryonSolidDisabled => primary300;

  Color get textPrimaryonDisabledDisabled => primary50;

  Color get textPrimaryonFadedPrimary => primary700;

  Color get textPrimaryonFadedSecondary => primary600;

  Color get textPrimaryonFadedTertiary => primary500;

  Color get textPrimaryonFadedQuartary => primary400;

  Color get textPrimaryonFadedDisabled => primary300;

  Color get textSecondaryActionHover => secondary600;

  Color get textSecondaryActionDefault => secondary500;

  Color get textSecondaryonWhitePrimary => secondary600;

  Color get textSecondaryonWhiteSecondary => secondary500;

  Color get textSecondaryonWhiteTertiary => secondary400;

  Color get textSecondaryonWhiteQuartary => secondary300;

  Color get textSecondaryonWhiteDisabled => secondary200;

  Color get textSecondaryonSolidPrimary => neutralWhite;

  Color get textSecondaryonSolidSecondary => secondary50;

  Color get textSecondaryonSolidTertiary => secondary100;

  Color get textSecondaryonSolidQuartary => secondary200;

  Color get textSecondaryonSolidDisabled => secondary300;

  Color get textSecondaryonDisabledDisabled => secondary50;

  Color get textSecondaryonFadedPrimary => secondary700;

  Color get textSecondaryonFadedSecondary => secondary600;

  Color get textSecondaryonFadedTertiary => secondary500;

  Color get textSecondaryonFadedQuartary => secondary400;

  Color get textSecondaryonFadedDisabled => secondary300;

  Color get textSuccessActionHover => success600;

  Color get textSuccessActionDefault => success500;

  Color get textSuccessonWhitePrimary => success700;

  Color get textSuccessonWhiteSecondary => success600;

  Color get textSuccessonWhiteTertiary => success500;

  Color get textSuccessonWhiteQuartary => success400;

  Color get textSuccessonWhiteDisabled => success200;

  Color get textSuccessonSolidPrimary => neutralWhite;

  Color get textSuccessonSolidSecondary => success50;

  Color get textSuccessonSolidTertiary => success100;

  Color get textSuccessonSolidQuartary => success200;

  Color get textSuccessonSolidDisabled => success300;

  Color get textSuccessonDisabledDisabled => success50;

  Color get textSuccessonFadedPrimary => success800;

  Color get textSuccessonFadedSecondary => success700;

  Color get textSuccessonFadedTertiary => success600;

  Color get textSuccessonFadedQuartary => success500;

  Color get textSuccessonFadedDisabled => success300;

  Color get textLink => primary500;

  Color get textInfoActionHover => info600;

  Color get textInfoActionDefault => info500;

  Color get textInfoonWhitePrimary => info600;

  Color get textInfoonWhiteSecondary => info500;

  Color get textInfoonWhiteTertiary => info400;

  Color get textInfoonWhiteQuartary => info300;

  Color get textInfoonWhiteDisabled => info200;

  Color get textInfoonSolidPrimary => neutralWhite;

  Color get textInfoonSolidSecondary => info50;

  Color get textInfoonSolidTertiary => info100;

  Color get textInfoonSolidQuantary => info200;

  Color get textInfoonSolidDisabled => info300;

  Color get textInfoonDisabledDisabled => info50;

  Color get textInfoonFadedPrimary => info700;

  Color get textInfoonFadedSecondary => info600;

  Color get textInfoonFadedTertiary => info500;

  Color get textInfoonFadedQuartary => info400;

  Color get textInfoonFadedDisabled => info300;

  Color get textWarningActionDefault => warning500;

  Color get textWarningActionHover => warning600;

  Color get textWarningonWhitePrimary => warning700;

  Color get textWarningonWhiteSecondary => warning600;

  Color get textWarningonWhiteTertiary => warning500;

  Color get textWarningonWhiteQuartary => warning400;

  Color get textWarningonWhiteDisabled => warning200;

  Color get textWarningonSolidPrimary => neutralWhite;

  Color get textWarningonSolidSecondary => warning50;

  Color get textWarningonSolidTertiary => warning100;

  Color get textWarningonSolidQuartary => warning200;

  Color get textWarningonSolidDisabled => warning300;

  Color get textWarningonDisabledDisabled => warning50;

  Color get textWarningonFadedPrimary => warning800;

  Color get textWarningonFadedSecondary => warning700;

  Color get textWarningonFadedTertiary => warning600;

  Color get textWarningonFadedQuartary => warning500;

  Color get textWarningonFadedDisabled => warning400;

  Color get textDangerActionDefault => danger500;

  Color get textDangerActionHover => danger600;

  Color get textDangeronWhitePrimary => danger600;

  Color get textDangeronWhiteSecondary => danger500;

  Color get textDangeronWhiteTertiary => danger400;

  Color get textDangeronWhiteQuartary => danger300;

  Color get textDangeronWhiteDisabled => danger200;

  Color get textDangeronSolidPrimary => neutralWhite;

  Color get textDangeronSolidSecondary => danger50;

  Color get textDangeronSolidTertiary => danger100;

  Color get textDangeronSolidQuartary => danger200;

  Color get textDangeronSolidDisabled => danger300;

  Color get textDangeronDisabledDisabled => danger50;

  Color get textDangeronFadedPrimary => danger700;

  Color get textDangeronFadedSecondary => danger600;

  Color get textDangeronFadedTertiary => danger500;

  Color get textDangeronFadedQuartary => danger400;

  Color get textDangeronFadedDisabled => danger300;

  Color get textHighlight => primary500;

  Color get textDividerDot => textNeutralTertiary;

  Color get textContentTypeDefaultBase => textNeutralBase;

  Color get textContentTypeDefaultWhite => textNeutralonSolidDefault;

  Color get textContentTypeDefaultLabel => textNeutralLabel;

  Color get textContentTypeDefaultSecondary => textNeutralSecondary;

  Color get textContentTypeDefaultPrimary => textPrimaryActionDefault;

  Color get textContentTypeDefaultSuccess => textSuccessActionDefault;

  Color get textContentTypeDefaultWarning => textWarningActionDefault;

  Color get textContentTypeDefaultInfo => textInfoActionDefault;

  Color get textContentTypeDefaultDanger => textDangerActionDefault;

  Color get textContentTypeDefaultPromotion => textPromotionActionDefault;

  Color get textContentTypeDefaultHill => textNeutralQuartary;

  Color get textContentTypeDefaultDisabled => textNeutralDisabled;

  Color get textContentTypeDisabledNeutral => textNeutralDisabled;

  Color get textContentTypeDisabledPrimary => textPrimaryonWhiteDisabled;

  Color get textContentTypeDisabledSuccess => textSuccessonWhiteDisabled;

  Color get textContentTypeDisabledWarning => textWarningonWhiteDisabled;

  Color get textContentTypeDisabledInfo => textInfoonWhiteDisabled;

  Color get textContentTypeDisabledDanger => textDangeronWhiteDisabled;

  Color get textContentTypeDisabledPromotion => textPromotiononWhiteDisabled;

  Color get textPromotionActionDefault => promotion500;

  Color get textPromotionActionHover => promotion600;

  Color get textPromotiononWhitePrimary => promotion600;

  Color get textPromotiononWhiteSecondary => promotion500;

  Color get textPromotiononWhiteTertiary => promotion400;

  Color get textPromotiononWhiteQuartary => promotion300;

  Color get textPromotiononWhiteDisabled => promotion200;

  Color get textPromotiononSolidPrimary => neutralWhite;

  Color get textPromotiononSolidSecondary => promotion50;

  Color get textPromotiononSolidTertiary => promotion100;

  Color get textPromotiononSolidQuartary => promotion200;

  Color get textPromotiononSolidDisabled => promotion300;

  Color get textPromotiononDisabledDisabled => promotion50;

  Color get textPromotiononFadedPrimary => promotion700;

  Color get textPromotiononFadedSecondary => promotion600;

  Color get textPromotiononFadedTertiary => promotion500;

  Color get textPromotiononFadedQuartary => promotion300;

  Color get textPromotiononFadedDisabled => promotion200;

  Color get effectGlowPrimary => primary500Opacity70;

  Color get effectGlowSecondary => secondary500Opacity70;

  Color get effectGlowSuccess => success500Opacity70;

  Color get effectGlowWarning => warning500Opacity70;

  Color get effectGlowDanger => danger500Opacity70;

  Color get effectGlowPromotion => promotion500Opacity70;

  Color get effectGlowInformation => info500Opacity70;

  Color get effectGlowNeutral => neutral500Opacity70;

  double get padding1 => numberRangeXS2;

  double get padding2 => numberRangeS1;

  double get padding3 => numberRangeS2;

  double get padding4 => numberRangeS3;

  double get padding5 => numberRangeS4;

  double get padding6 => numberRangeM1;

  double get padding7 => numberRangeM2H;

  double get padding8 => numberRangeM2;

  double get padding9 => numberRangeM3H;

  double get padding10 => numberRangeM3;

  double get padding11 => numberRangeM4H;

  double get padding12 => numberRangeM4;

  double get padding13 => numberRangeM5H;

  double get padding14 => numberRangeL1;

  double get padding17 => numberRangeL2;

  double get padding20 => numberRangeL3;

  double get padding23 => numberRangeL4;

  double get paddingWillRemoveToken => numberRangeXS1H;

  double get paddingH => numberRangeXS1;

  double get paddingHQ => numberRangeXS2H;

  double get padding1H => numberRangeXS3;

  double get padding2H => numberRangeS2H;

  double get padding3H => numberRangeS3H;

  double get padding4H => numberRangeS4H;

  double get padding5H => numberRangeS5H;

  double get padding15H => numberRangeL2H;

  double get padding18H => numberRangeL3H;

  double get padding21H => numberRangeL4H;

  double get padding24H => numberRangeL5H;

  double get margin1 => numberRangeXS2;

  double get margin2 => numberRangeS1;

  double get margin3 => numberRangeS2;

  double get margin4 => numberRangeS3;

  double get margin5 => numberRangeS4;

  double get margin6 => numberRangeM1;

  double get margin7 => numberRangeM2H;

  double get margin8 => numberRangeM2;

  double get margin9 => numberRangeM3H;

  double get margin10 => numberRangeM3;

  double get margin11 => numberRangeM4H;

  double get margin12 => numberRangeM4;

  double get margin13 => numberRangeM5H;

  double get margin1H => numberRangeXS3;

  double get margin2H => numberRangeS2H;

  double get margin3H => numberRangeS3H;

  double get margin4H => numberRangeS4H;

  double get margin5H => numberRangeS5H;

  double get gutter1 => numberRangeXS2;

  double get gutter2 => numberRangeS1;

  double get gutter3 => numberRangeS2;

  double get gutter4 => numberRangeS3;

  double get gutter5 => numberRangeS4;

  double get gutter6 => numberRangeM1;

  double get gutter7 => numberRangeM2H;

  double get gutter8 => numberRangeM2;

  double get gutter9 => numberRangeM3H;

  double get gutterH => numberRangeXS1;

  double get gutter1H => numberRangeXS3;

  double get gutter2H => numberRangeS2H;

  double get gutter3H => numberRangeS3H;

  double get gutter4H => numberRangeS4H;

  double get gutter5H => numberRangeS5H;

  double get sizeBox2 => numberRangeS1;

  double get sizeBox3 => numberRangeS2;

  double get sizeBox4 => numberRangeS3;

  double get sizeBox5 => numberRangeS4;

  double get sizeBox6 => numberRangeM1;

  double get sizeBox7 => numberRangeM2H;

  double get sizeBox8 => numberRangeM2;

  double get sizeBox9 => numberRangeM3H;

  double get sizeBox10 => numberRangeM3;

  double get sizeBox11 => numberRangeM4H;

  double get sizeBox12 => numberRangeM4;

  double get sizeBox13 => numberRangeM5H;

  double get sizeBox14 => numberRangeL1;

  double get sizeBox17 => numberRangeL2;

  double get sizeBox20 => numberRangeL3;

  double get sizeBox23 => numberRangeL4;

  double get sizeBox26 => numberRangeXL1;

  double get sizeBox28 => numberRangeXL2H;

  double get sizeBox30 => numberRangeXL2;

  double get sizeBox32 => numberRangeXL3H;

  double get sizeBox34 => numberRangeXL3;

  double get sizeBox36 => numberRangeXL4H;

  double get sizeBox38 => numberRangeXL4;

  double get sizeBox40 => numberRangeXL5H;

  double get sizeBox2H => numberRangeS2H;

  double get sizeBox3H => numberRangeS3H;

  double get sizeBox4H => numberRangeS4H;

  double get sizeBox5H => numberRangeS5H;

  double get sizeBox15H => numberRangeL2H;

  double get sizeBox18H => numberRangeL3H;

  double get sizeBox21H => numberRangeL4H;

  double get sizeBox24H => numberRangeL5H;

  double get glowBlur => 6;

  double get glowX => 0;

  double get glowY => 0;

  double get borderRadius1 => numberRangeXS2;

  double get borderRadius2 => numberRangeS1;

  double get borderRadius3 => numberRangeS2;

  double get borderRadius4 => numberRangeS3;

  double get borderRadius5 => numberRangeS4;

  double get borderRadius6 => numberRangeM1;

  double get borderRadius7 => numberRangeM2H;

  double get borderRadius8 => numberRangeM2;

  double get borderRadius9 => numberRangeM3H;

  double get borderRadius10 => numberRangeM3;

  double get borderRadius11 => numberRangeM4H;

  double get borderRadius12 => numberRangeM4;

  double get borderRadius13 => numberRangeM5H;

  double get borderRadiusPill => numberRangePercentPill;

  double get borderRadiusH => numberRangeXS1;

  double get borderRadius1H => numberRangeXS3;

  double get borderRadius2H => numberRangeS2H;

  double get borderRadius3H => numberRangeS3H;

  double get borderRadius4H => numberRangeS4H;

  double get borderRadius5H => numberRangeS5H;

  double get strokeWidthS => 0.5;

  double get strokeWidthM => 1;

  double get strokeWidthL => 2;

  Color get primary25 => productStyleTypePrimaryCorlor25;

  Color get primary50 => productStyleTypePrimaryCorlor50;

  Color get primary75 => productStyleTypePrimaryCorlor75;

  Color get primary100 => productStyleTypePrimaryCorlor100;

  Color get primary150 => productStyleTypePrimaryCorlor150;

  Color get primary200 => productStyleTypePrimaryCorlor200;

  Color get primary300 => productStyleTypePrimaryCorlor300;

  Color get primary400 => productStyleTypePrimaryCorlor400;

  Color get primary500 => productStyleTypePrimaryCorlor500;

  Color get primary600 => productStyleTypePrimaryCorlor600;

  Color get primary700 => productStyleTypePrimaryCorlor700;

  Color get primary800 => productStyleTypePrimaryCorlor800;

  Color get primary825 => productStyleTypePrimaryCorlor825;

  Color get primary850 => productStyleTypePrimaryCorlor850;

  Color get primary875 => productStyleTypePrimaryCorlor875;

  Color get primary900 => productStyleTypePrimaryCorlor900;

  Color get primary500Opacity70 => productStyleTypePrimaryCorlor500Opacity70;

  Color get primary500Opacity15 => productStyleTypePrimaryCorlor500Opacity15;

  Color get primaryBG => bG;

  Color get secondary25 => themeColorCollectionsSecondary25;

  Color get secondary50 => themeColorCollectionsSecondary50;

  Color get secondary75 => themeColorCollectionsSecondary75;

  Color get secondary100 => themeColorCollectionsSecondary100;

  Color get secondary150 => themeColorCollectionsSecondary150;

  Color get secondary200 => themeColorCollectionsSecondary200;

  Color get secondary300 => themeColorCollectionsSecondary300;

  Color get secondary400 => themeColorCollectionsSecondary400;

  Color get secondary500 => themeColorCollectionsSecondary500;

  Color get secondary600 => themeColorCollectionsSecondary600;

  Color get secondary700 => themeColorCollectionsSecondary700;

  Color get secondary800 => themeColorCollectionsSecondary800;

  Color get secondary825 => themeColorCollectionsSecondary825;

  Color get secondary850 => themeColorCollectionsSecondary850;

  Color get secondary875 => themeColorCollectionsSecondary875;

  Color get secondary900 => themeColorCollectionsSecondary900;

  Color get secondary500Opacity70 => themeColorCollectionsSecondary50070;

  Color get secondary500Opacity15 => themeColorCollectionsSecondary50015;

  Color get neutral25 => colorPaletteGray25;

  Color get neutral50 => colorPaletteGray50;

  Color get neutral75 => colorPaletteGray75;

  Color get neutral100 => colorPaletteGray100;

  Color get neutral150 => colorPaletteGray150;

  Color get neutral200 => colorPaletteGray200;

  Color get neutral300 => colorPaletteGray300;

  Color get neutral400 => colorPaletteGray400;

  Color get neutral500 => colorPaletteGray500;

  Color get neutral600 => colorPaletteGray600;

  Color get neutral700 => colorPaletteGray700;

  Color get neutral800 => colorPaletteGray800;

  Color get neutral825 => colorPaletteGray825;

  Color get neutral850 => colorPaletteGray850;

  Color get neutral875 => colorPaletteGray875;

  Color get neutral900 => colorPaletteGray900;

  Color get neutralWhite => colorPaletteGray0;

  Color get neutralWhiteOpacity15 => colorPaletteGrayWhiteOpacity15;

  Color get neutralWhiteOpacity25 => colorPaletteGrayWhiteOpacity25;

  Color get neutralWhiteOpacity70 => colorPaletteGrayWhiteOpacity70;

  Color get neutral50Opacity0 => colorPaletteGray50Opacity0;

  Color get neutral500Opacity70 => colorPaletteGray500Opacity70;

  Color get neutral500Opacity15 => colorPaletteGray500Opacity15;

  Color get neutralBlack => colorPaletteGray1000;

  Color get neutralBlackOpacity15 => colorPaletteGrayBlackOpacity15;

  Color get neutralBlackOpacity25 => colorPaletteGrayBlackOpacity25;

  Color get neutralBlackOpacity70 => colorPaletteGrayBlackOpacity70;

  Color get success25 => colorPaletteGreen25;

  Color get success50 => colorPaletteGreen50;

  Color get success75 => colorPaletteGreen75;

  Color get success100 => colorPaletteGreen100;

  Color get success150 => colorPaletteGreen150;

  Color get success200 => colorPaletteGreen200;

  Color get success300 => colorPaletteGreen300;

  Color get success400 => colorPaletteGreen400;

  Color get success500 => colorPaletteGreen500;

  Color get success600 => colorPaletteGreen600;

  Color get success700 => colorPaletteGreen700;

  Color get success800 => colorPaletteGreen800;

  Color get success825 => colorPaletteGreen825;

  Color get success850 => colorPaletteGreen850;

  Color get success875 => colorPaletteGreen875;

  Color get success900 => colorPaletteGreen900;

  Color get success500Opacity70 => colorPaletteGreen500Opacity70;

  Color get success500Opacity15 => colorPaletteGreen500Opacity15;

  Color get info25 => colorPaletteBlue25;

  Color get info50 => colorPaletteBlue50;

  Color get info75 => colorPaletteBlue75;

  Color get info100 => colorPaletteBlue100;

  Color get info150 => colorPaletteBlue150;

  Color get info200 => colorPaletteBlue200;

  Color get info300 => colorPaletteBlue300;

  Color get info400 => colorPaletteBlue400;

  Color get info500 => colorPaletteBlue500;

  Color get info600 => colorPaletteBlue600;

  Color get info700 => colorPaletteBlue700;

  Color get info800 => colorPaletteBlue800;

  Color get info825 => colorPaletteBlue825;

  Color get info850 => colorPaletteBlue850;

  Color get info875 => colorPaletteBlue875;

  Color get info900 => colorPaletteBlue900;

  Color get info500Opacity70 => colorPaletteBlue500Opacity70;

  Color get info500Opacity15 => colorPaletteBlue500Opacity15;

  Color get warning25 => colorPaletteOrange25;

  Color get warning50 => colorPaletteOrange50;

  Color get warning75 => colorPaletteOrange75;

  Color get warning100 => colorPaletteOrange100;

  Color get warning150 => colorPaletteOrange150;

  Color get warning200 => colorPaletteOrange200;

  Color get warning300 => colorPaletteOrange300;

  Color get warning400 => colorPaletteOrange400;

  Color get warning500 => colorPaletteOrange500;

  Color get warning600 => colorPaletteOrange600;

  Color get warning700 => colorPaletteOrange700;

  Color get warning800 => colorPaletteOrange800;

  Color get warning825 => colorPaletteOrange825;

  Color get warning850 => colorPaletteOrange850;

  Color get warning875 => colorPaletteOrange875;

  Color get warning900 => colorPaletteOrange900;

  Color get warning500Opacity70 => colorPaletteOrange500Opacity70;

  Color get warning500Opacity15 => colorPaletteOrange500Opacity15;

  Color get danger25 => colorPaletteRed25;

  Color get danger50 => colorPaletteRed50;

  Color get danger75 => colorPaletteRed75;

  Color get danger100 => colorPaletteRed100;

  Color get danger150 => colorPaletteRed150;

  Color get danger200 => colorPaletteRed200;

  Color get danger300 => colorPaletteRed300;

  Color get danger400 => colorPaletteRed400;

  Color get danger500 => colorPaletteRed500;

  Color get danger600 => colorPaletteRed600;

  Color get danger700 => colorPaletteRed700;

  Color get danger800 => colorPaletteRed800;

  Color get danger825 => colorPaletteRed825;

  Color get danger850 => colorPaletteRed850;

  Color get danger875 => colorPaletteRed875;

  Color get danger900 => colorPaletteRed900;

  Color get danger500Opacity70 => colorPaletteRed500Opacity70;

  Color get danger500Opacity15 => colorPaletteRed500Opacity15;

  Color get promotion25 => colorPalettePink25;

  Color get promotion50 => colorPalettePink50;

  Color get promotion75 => colorPalettePink75;

  Color get promotion100 => colorPalettePink100;

  Color get promotion150 => colorPalettePink150;

  Color get promotion200 => colorPalettePink200;

  Color get promotion300 => colorPalettePink300;

  Color get promotion400 => colorPalettePink400;

  Color get promotion500 => colorPalettePink500;

  Color get promotion600 => colorPalettePink600;

  Color get promotion700 => colorPalettePink700;

  Color get promotion800 => colorPalettePink800;

  Color get promotion825 => colorPalettePink825;

  Color get promotion850 => colorPalettePink850;

  Color get promotion875 => colorPalettePink875;

  Color get promotion900 => colorPalettePink900;

  Color get promotion500Opacity70 => colorPalettePink500Opacity70;

  Color get promotion500Opacity15 => colorPalettePink500Opacity15;

  Color get blueDark => colorPaletteBlue700;

  Color get blueDefault => colorPaletteBlue500;

  Color get blueLight => colorPaletteBlue300;

  Color get greenDark => colorPaletteGreen600;

  Color get greenDefault => colorPaletteGreen400;

  Color get greenLight => colorPaletteGreen200;

  Color get orangeDark => colorPaletteOrange600;

  Color get orangeDefault => colorPaletteOrange400;

  Color get orangeLight => colorPaletteOrange200;

  Color get redDark => colorPaletteRed600;

  Color get redDefault => colorPaletteRed400;

  Color get redLight => colorPaletteRed200;

  Color get pinkDark => colorPalettePink600;

  Color get pinkDefault => colorPalettePink400;

  Color get pinkLight => colorPalettePink200;

  Color get cyanDark => colorPaletteCyan600;

  Color get cyanDefault => colorPaletteCyan400;

  Color get cyanLight => colorPaletteCyan200;

  Color get violetDark => colorPaletteViolet600;

  Color get violetDefault => colorPaletteViolet400;

  Color get violetLight => colorPaletteViolet200;

  Color get grayDark => colorPaletteGray600;

  Color get grayDefault => colorPaletteGray400;

  Color get grayLight => colorPaletteGray200;

  double get lineHeight3 => 12;

  double get lineHeight4 => 16;

  double get lineHeight5 => 20;

  double get lineHeight6 => 24;

  double get lineHeight7 => 28;

  double get lineHeight8 => 32;

  double get lineHeight9 => 36;

  double get lineHeight10 => 40;

  double get lineHeight12 => 48;

  double get lineHeight15 => 60;

  double get lineHeight18 => 72;

  double get weightRegular => 400;

  double get weightMedium => 500;

  double get weightSemiBold => 600;

  double get weightBold => 700;

  double get weightExtraBold => 800;

  double get paragraphSpacing3 => 12;

  double get paragraphSpacing4 => 16;

  double get paragraphSpacingAuto => 8;

  double get paragraphSpacing3H => 14;

  late final DimensionMobile dimensionMobile;

  double get globalWheelPadding0 => dimensionMobile.globalWheelPadding0;

  double get globalWheelPadding1 => dimensionMobile.globalWheelPadding1;

  double get globalWheelPadding2 => dimensionMobile.globalWheelPadding2;

  double get globalWheelPadding3 => dimensionMobile.globalWheelPadding3;

  double get globalWheelPadding4 => dimensionMobile.globalWheelPadding4;

  double get globalWheelPadding5 => dimensionMobile.globalWheelPadding5;

  double get globalWheelPadding6 => dimensionMobile.globalWheelPadding6;

  double get globalWheelPadding7 => dimensionMobile.globalWheelPadding7;

  double get globalWheelPadding8 => dimensionMobile.globalWheelPadding8;

  double get globalWheelPadding9 => dimensionMobile.globalWheelPadding9;

  double get globalWheelPadding10 => dimensionMobile.globalWheelPadding10;

  double get globalWheelPadding11 => dimensionMobile.globalWheelPadding11;

  double get globalWheelPadding12 => dimensionMobile.globalWheelPadding12;

  double get globalWheelPadding13 => dimensionMobile.globalWheelPadding13;

  double get globalWheelPadding14 => dimensionMobile.globalWheelPadding14;

  double get globalWheelPadding15 => dimensionMobile.globalWheelPadding15;

  double get globalWheelPadding16 => dimensionMobile.globalWheelPadding16;

  double get globalWheelPadding17 => dimensionMobile.globalWheelPadding17;

  double get globalWheelPadding18 => dimensionMobile.globalWheelPadding18;

  double get globalWheelPadding19 => dimensionMobile.globalWheelPadding19;

  double get globalWheelPadding20 => dimensionMobile.globalWheelPadding20;

  double get globalWheelPadding21 => dimensionMobile.globalWheelPadding21;

  double get globalWheelPadding22 => dimensionMobile.globalWheelPadding22;

  double get globalWheelPadding23 => dimensionMobile.globalWheelPadding23;

  double get globalWheelPadding24 => dimensionMobile.globalWheelPadding24;

  double get globalWheelPadding25 => dimensionMobile.globalWheelPadding25;

  double get globalWheelPadding26 => dimensionMobile.globalWheelPadding26;

  double get globalWheelPadding27 => dimensionMobile.globalWheelPadding27;

  double get globalWheelPadding28 => dimensionMobile.globalWheelPadding28;

  double get globalWheelPadding29 => dimensionMobile.globalWheelPadding29;

  double get globalWheelPadding30 => dimensionMobile.globalWheelPadding30;

  double get globalWheelPadding31 => dimensionMobile.globalWheelPadding31;

  double get globalWheelPadding32 => dimensionMobile.globalWheelPadding32;

  double get globalWheelPadding33 => dimensionMobile.globalWheelPadding33;

  double get globalWheelPadding34 => dimensionMobile.globalWheelPadding34;

  double get globalWheelPadding35 => dimensionMobile.globalWheelPadding35;

  double get globalWheelPadding36 => dimensionMobile.globalWheelPadding36;

  double get globalWheelPadding37 => dimensionMobile.globalWheelPadding37;

  double get globalWheelPadding38 => dimensionMobile.globalWheelPadding38;

  double get globalWheelPadding39 => dimensionMobile.globalWheelPadding39;

  double get globalWheelPadding40 => dimensionMobile.globalWheelPadding40;

  double get globalWheelPadding41 => dimensionMobile.globalWheelPadding41;

  double get globalWheelPadding42 => dimensionMobile.globalWheelPadding42;

  double get globalWheelPadding43 => dimensionMobile.globalWheelPadding43;

  double get globalWheelPadding44 => dimensionMobile.globalWheelPadding44;

  double get globalWheelPadding45 => dimensionMobile.globalWheelPadding45;

  double get globalWheelPadding46 => dimensionMobile.globalWheelPadding46;

  double get globalWheelPadding47 => dimensionMobile.globalWheelPadding47;

  double get globalWheelPadding48 => dimensionMobile.globalWheelPadding48;

  double get globalWheelPadding49 => dimensionMobile.globalWheelPadding49;

  double get globalWheelPadding50 => dimensionMobile.globalWheelPadding50;

  double get globalWheelPadding51 => dimensionMobile.globalWheelPadding51;

  double get globalWheelPadding52 => dimensionMobile.globalWheelPadding52;

  double get globalWheelPadding53 => dimensionMobile.globalWheelPadding53;

  double get globalWheelPadding54 => dimensionMobile.globalWheelPadding54;

  double get globalWheelPadding55 => dimensionMobile.globalWheelPadding55;

  double get globalWheelPadding56 => dimensionMobile.globalWheelPadding56;

  double get globalWheelPadding57 => dimensionMobile.globalWheelPadding57;

  double get globalWheelPadding58 => dimensionMobile.globalWheelPadding58;

  double get globalWheelPadding59 => dimensionMobile.globalWheelPadding59;

  double get globalWheelPadding60 => dimensionMobile.globalWheelPadding60;

  double get globalWheelPadding61 => dimensionMobile.globalWheelPadding61;

  double get globalWheelPadding62 => dimensionMobile.globalWheelPadding62;

  double get globalWheelPadding63 => dimensionMobile.globalWheelPadding63;

  double get globalWheelPadding64 => dimensionMobile.globalWheelPadding64;

  double get globalWheelPadding65 => dimensionMobile.globalWheelPadding65;

  double get globalWheelPadding66 => dimensionMobile.globalWheelPadding66;

  double get globalWheelPadding67 => dimensionMobile.globalWheelPadding67;

  double get globalWheelPadding68 => dimensionMobile.globalWheelPadding68;

  double get globalWheelPadding69 => dimensionMobile.globalWheelPadding69;

  double get globalWheelPadding70 => dimensionMobile.globalWheelPadding70;

  double get globalWheelPadding71 => dimensionMobile.globalWheelPadding71;

  double get globalWheelPadding72 => dimensionMobile.globalWheelPadding72;

  double get globalWheelPadding73 => dimensionMobile.globalWheelPadding73;

  double get globalWheelPadding74 => dimensionMobile.globalWheelPadding74;

  double get globalWheelPadding75 => dimensionMobile.globalWheelPadding75;

  double get globalWheelPadding76 => dimensionMobile.globalWheelPadding76;

  double get globalWheelPadding77 => dimensionMobile.globalWheelPadding77;

  double get globalWheelPadding78 => dimensionMobile.globalWheelPadding78;

  double get globalWheelPadding79 => dimensionMobile.globalWheelPadding79;

  double get globalWheelPadding80 => dimensionMobile.globalWheelPadding80;

  double get globalWheelPadding81 => dimensionMobile.globalWheelPadding81;

  double get globalWheelPadding82 => dimensionMobile.globalWheelPadding82;

  double get globalWheelPadding83 => dimensionMobile.globalWheelPadding83;

  double get globalWheelPadding84 => dimensionMobile.globalWheelPadding84;

  double get globalWheelPadding85 => dimensionMobile.globalWheelPadding85;

  double get globalWheelPadding86 => dimensionMobile.globalWheelPadding86;

  double get globalWheelPadding87 => dimensionMobile.globalWheelPadding87;

  double get globalWheelPadding88 => dimensionMobile.globalWheelPadding88;

  double get globalWheelPadding89 => dimensionMobile.globalWheelPadding89;

  double get globalWheelPadding90 => dimensionMobile.globalWheelPadding90;

  double get globalWheelPadding91 => dimensionMobile.globalWheelPadding91;

  double get globalWheelPadding92 => dimensionMobile.globalWheelPadding92;

  double get globalWheelPadding93 => dimensionMobile.globalWheelPadding93;

  double get globalWheelPadding94 => dimensionMobile.globalWheelPadding94;

  double get globalWheelPadding95 => dimensionMobile.globalWheelPadding95;

  double get globalWheelPadding96 => dimensionMobile.globalWheelPadding96;

  double get globalWheelPadding97 => dimensionMobile.globalWheelPadding97;

  double get globalWheelPadding98 => dimensionMobile.globalWheelPadding98;

  double get globalWheelPadding99 => dimensionMobile.globalWheelPadding99;

  double get globalWheelPadding100 => dimensionMobile.globalWheelPadding100;

  double get globalWheelHeightStarter =>
      dimensionMobile.globalWheelHeightStarter;

  double get globalWheelHeightItem => dimensionMobile.globalWheelHeightItem;

  double get globalWheelHeightWrapperContent =>
      dimensionMobile.globalWheelHeightWrapperContent;

  double get globalWheelHeightWrapperSelected =>
      dimensionMobile.globalWheelHeightWrapperSelected;

  double get globalWheelHeightWrapperContainer5Rows =>
      dimensionMobile.globalWheelHeightWrapperContainer5Rows;

  double get globalWheelHeightWrapperContainer3Rows =>
      dimensionMobile.globalWheelHeightWrapperContainer3Rows;

  late final Breakpoint breakpoint;

  double get globalPaddingXS1 => breakpoint.globalPaddingXS1;

  double get globalPaddingXS2 => breakpoint.globalPaddingXS2;

  double get globalPaddingXS3 => breakpoint.globalPaddingXS3;

  double get globalPaddingXS1H => breakpoint.globalPaddingXS1H;

  double get globalPaddingXS2H => breakpoint.globalPaddingXS2H;

  double get globalPaddingS1 => breakpoint.globalPaddingS1;

  double get globalPaddingS2 => breakpoint.globalPaddingS2;

  double get globalPaddingS3 => breakpoint.globalPaddingS3;

  double get globalPaddingS4 => breakpoint.globalPaddingS4;

  double get globalPaddingS2H => breakpoint.globalPaddingS2H;

  double get globalPaddingS3H => breakpoint.globalPaddingS3H;

  double get globalPaddingS4H => breakpoint.globalPaddingS4H;

  double get globalPaddingM1 => breakpoint.globalPaddingM1;

  double get globalPaddingM2 => breakpoint.globalPaddingM2;

  double get globalPaddingM3 => breakpoint.globalPaddingM3;

  double get globalPaddingM4 => breakpoint.globalPaddingM4;

  double get globalPaddingL1 => breakpoint.globalPaddingL1;

  double get globalPaddingL2 => breakpoint.globalPaddingL2;

  double get globalPaddingL3 => breakpoint.globalPaddingL3;

  double get globalPaddingL4 => breakpoint.globalPaddingL4;

  double get globalMarginXS2 => breakpoint.globalMarginXS2;

  double get globalMarginS1 => breakpoint.globalMarginS1;

  double get globalMarginS2 => breakpoint.globalMarginS2;

  double get globalMarginS3 => breakpoint.globalMarginS3;

  double get globalMarginS4 => breakpoint.globalMarginS4;

  double get globalMarginM1 => breakpoint.globalMarginM1;

  double get globalMarginM2 => breakpoint.globalMarginM2;

  double get globalMarginM3 => breakpoint.globalMarginM3;

  double get globalMarginM4 => breakpoint.globalMarginM4;

  double get globalGutterXS1 => breakpoint.globalGutterXS1;

  double get globalGutterXS2 => breakpoint.globalGutterXS2;

  double get globalGutterXS3 => breakpoint.globalGutterXS3;

  double get globalGutterS1 => breakpoint.globalGutterS1;

  double get globalGutterS2 => breakpoint.globalGutterS2;

  double get globalGutterS3 => breakpoint.globalGutterS3;

  double get globalGutterS4 => breakpoint.globalGutterS4;

  double get globalGutterS2H => breakpoint.globalGutterS2H;

  double get globalGutterS3H => breakpoint.globalGutterS3H;

  double get globalGutterS4H => breakpoint.globalGutterS4H;

  double get globalGutterM1 => breakpoint.globalGutterM1;

  double get globalGutterM2 => breakpoint.globalGutterM2;

  double get globalSizeS1 => breakpoint.globalSizeS1;

  double get globalSizeS2 => breakpoint.globalSizeS2;

  double get globalSizeS3 => breakpoint.globalSizeS3;

  double get globalSizeS4 => breakpoint.globalSizeS4;

  double get globalSizeS2H => breakpoint.globalSizeS2H;

  double get globalSizeS3H => breakpoint.globalSizeS3H;

  double get globalSizeS4H => breakpoint.globalSizeS4H;

  double get globalSizeS5H => breakpoint.globalSizeS5H;

  double get globalSizeM1 => breakpoint.globalSizeM1;

  double get globalSizeM2 => breakpoint.globalSizeM2;

  double get globalSizeM3 => breakpoint.globalSizeM3;

  double get globalSizeM4 => breakpoint.globalSizeM4;

  double get globalSizeM2H => breakpoint.globalSizeM2H;

  double get globalSizeM4H => breakpoint.globalSizeM4H;

  double get globalSizeL1 => breakpoint.globalSizeL1;

  double get globalSizeL2 => breakpoint.globalSizeL2;

  double get globalSizeL3 => breakpoint.globalSizeL3;

  double get globalSizeL4 => breakpoint.globalSizeL4;

  double get globalSizeXL1 => breakpoint.globalSizeXL1;

  double get globalSizeXL2 => breakpoint.globalSizeXL2;

  double get globalSizeXL3 => breakpoint.globalSizeXL3;

  double get globalSizeXL4 => breakpoint.globalSizeXL4;

  double get globalStrokeMH => breakpoint.globalStrokeMH;

  double get globalStrokeM => breakpoint.globalStrokeM;

  double get globalIconXXS => breakpoint.globalIconXXS;

  double get globalIconXS => breakpoint.globalIconXS;

  double get globalIconS => breakpoint.globalIconS;

  double get globalIconM => breakpoint.globalIconM;

  double get globalIconL => breakpoint.globalIconL;

  double get globalIconXL => breakpoint.globalIconXL;

  double get globalIconXXL => breakpoint.globalIconXXL;

  double get deviceWidth => breakpoint.deviceWidth;

  double get deviceHeight => breakpoint.deviceHeight;

  double get deviceMinHeight => breakpoint.deviceMinHeight;

  double get safeAreaPaddingTop => breakpoint.safeAreaPaddingTop;

  double get safeAreaPaddingBottom => breakpoint.safeAreaPaddingBottom;

  double get safeAreaHeightTop => breakpoint.safeAreaHeightTop;

  double get safeAreaHeightBottom => breakpoint.safeAreaHeightBottom;

  double get sheetMaxHeight => breakpoint.sheetMaxHeight;

  double get sheetMinHeight => breakpoint.sheetMinHeight;

  double get formCheckboxRadio => breakpoint.formCheckboxRadio;

  double get checkboxSize => formCheckboxRadio;

  double get checkboxGutter => gutterElementHorizontal;

  double get checkboxRadius => globalRadiusMin;

  double get checkboxStrokeWidth => globalStrokeM;

  Color get checkboxColorBorderDefault => borderNeutralDefault;

  Color get checkboxColorBorderDisabled => borderNeutralDisabled;

  Color get checkboxColorBGSelectedDefault => borderPrimaryDefault;

  Color get checkboxColorBGSelectedDisabled => borderPrimaryDisabled;

  Color get checkboxColorBGUnSelectedDefault => bGLayerLevel0;

  Color get checkboxColorBGUnSelectedDisabled => bGTransparentDefault;

  Color get checkboxColorBGTickDefault => iconNeutralonSolidPrimaryAction;

  Color get checkboxColorBGTickDisabled => iconPrimaryonDisabledDisabled;

  double get checkCirclePadding => globalPaddingXS2H;

  double get checkCircleSizeS => globalSizeS4;

  double get checkCircleSizeM => globalSizeM1;

  double get dropdownPaddingVertical => sectionPaddingVertical;

  double get dropdownPaddingHorizontal => paddingContainer;

  double get dropdownRadius => globalRadiusSection;

  double get dropdownSizeMinWidth => globalSizeXL4;

  double get dropdownSizeWidth => 250;

  double get inputRadius => globalRadiusBase;

  double get inputAtomLabelGutter => globalGutterXS1;

  Color get inputAtomLabelRequired => textDangeronWhiteTertiary;

  double get inputAtomDomainSize => globalSizeM4;

  double get inputAtomDomainRadius => globalRadiusInnerBase;

  double get inputAtomDomainPaddingVertical => globalPaddingXS2;

  double get inputAtomDomainPaddingHorizontalInside => globalPaddingXS2;

  double get inputAtomDomainPaddingHorizontalOutside => globalPaddingS2;

  Color get inputAtomDomainColorBGEnabled => bGPrimaryFadedDefault;

  Color get inputAtomDomainColorBGReadOnly => bGNeutralFadedHover;

  Color get inputAtomDomainColorTextEnabled => textPrimaryActionDefault;

  Color get inputAtomDomainColorTextDisabled => textNeutralTertiary;

  double get inputAtomNumberUnitPaddingTop => globalPaddingS2;

  double get inputAtomNumberUnitPaddingBottom => globalPaddingXS2;

  Color get inputAtomNumberButtonColorBGDefault => inputColorBGDefault;

  Color get inputAtomNumberButtonColorBGPressed => bGNeutralFadedPressed;

  double get inputAtomOTPWidth => globalSizeM3;

  double get inputAtomOTPHeight => globalSizeM4;

  double get inputAtomOTPGutter => globalGutterS2H;

  double get inputAtomOTPPaddingHorizontal => globalPaddingS2H;

  double get inputAtomOTPPaddingVertical => globalPaddingS1;

  Color get inputColorBorderActivated => borderPrimaryDefault;

  Color get inputColorBorderError => borderFormError;

  Color get inputColorBorderRequired => borderFormRequired;

  Color get inputColorBorderDefault => borderFormDefault;

  Color get inputColorBorderDisabled => borderFormDisabled;

  Color get inputColorBorderSuccess => borderFormSuccess;

  Color get inputColorTextPlaceholder => textNeutralPlaceholder;

  Color get inputColorTextFilled => textNeutralBase;

  Color get inputColorTextReadOnly => textNeutralReadOnly;

  Color get inputColorTextDisabled => textNeutralDisabled;

  Color get inputColorTextInfo => textInfoActionDefault;

  Color get inputColorTextDanger => textDangerActionDefault;

  Color get inputColorTextwarning => textWarningActionDefault;

  Color get inputColorIconPrefix => iconNeutralLabel;

  Color get inputColorIconAction => iconNeutralPrimaryAction;

  Color get inputColorIconDisabled => iconNeutralDisabled;

  Color get inputColorBGDefault => bGFormDefaultInput;

  Color get inputColorBGActivated => bGFormActivated;

  Color get inputColorBGDisabled => bGFormDisabled;

  Color get inputColorBGReadOnly => bGFormReadOnly;

  Color get inputColorBGBox => bGFormDefaultInput;

  double get inputPaddingHorizontal => globalPaddingS3;

  double get inputPaddingWithSuffix => globalPaddingXS2;

  double get inputPaddingVerticalL => globalPaddingXS2H;

  double get inputPaddingVerticalM => globalPaddingXS2H;

  double get inputPaddingVerticalS => globalPaddingXS2H;

  double get inputPaddingVerticalXL => globalPaddingXS2H;

  double get inputPaddingVerticalTextarea => globalPaddingS1;

  double get inputGutterHorizontal => globalGutterS2;

  double get inputGutterVertical => globalGutterXS2;

  double get inputGutterValue => globalGutterXS2;

  double get inputGutterValueInline => globalGutterS2;

  double get inputMinHeightTextfield => globalSizeL1;

  double get inputMinHeightContentM => globalSizeM1;

  double get inputMinHeightContentL => globalSizeM2;

  double get inputSizeVerticalS => formSizeVerticalS;

  double get inputSizeVerticalM => formSizeVerticalM;

  double get inputSizeVerticalL => formSizeVerticalL;

  double get inputSizeVerticalXL => formSizeVerticalXL;

  double get inputSizeHorizontalM => formSizeHorizontalM;

  double get inputSizeHorizontalS => formSizeHorizontalS;

  double get pickerGutterMonthYearHorizontal => globalGutterS1;

  double get pickerGutterMonthYearVertical => globalGutterS2H;

  Color get pickerColorBGWeekSelected => buttonColorBGPrimaryFadedDefault;

  Color get pickerColorBGCurrent => primary100;

  Color get pickerColorBGRange => primary25;

  Color get pickerColorBGChosen => bGPrimarySolidDefault;

  Color get pickerColorBGCurrentMonth => primary25;

  double get pickerPaddingContentHorizontal => globalPaddingS2;

  double get pickerPaddingContentVertical => globalPaddingM1;

  double get pickerAtomWeekRadius => borderRadiusPill;

  double get pickerAtomWeekSize => globalSizeM2;

  double get pickerAtomDateSize => globalSizeM3;

  Color get pickerAtomWeekdayColor => textNeutralTertiary;

  double get pickerAtomWeekdayPaddingVertical => globalPaddingS1;

  double get radioSize => formCheckboxRadio;

  double get radioGutter => gutterElementHorizontal;

  double get radioRadius => borderRadiusPill;

  double get radioStrokeUnSelected => 1;

  double get radioStrokeSelected => 5;

  Color get radioColorBorderUnSelectedDefault => borderNeutralDefault;

  Color get radioColorBorderUnSelectedDisabled => borderNeutralDisabled;

  Color get radioColorBorderSelectedDefault => borderPrimaryDefault;

  Color get radioColorBorderSelectedDisabled => borderPrimaryDisabled;

  Color get radioColorBGDefault => bGLayerLevel0;

  Color get radioColorBGDisabled => bGTransparentDefault;

  Color get searchColorBGDefault => bGFormDefaultSearch;

  Color get searchColorBGOnLayer2 => bGFormDefaultSearchonLayer2;

  Color get searchColorTextDefaultOnLayer2 => textNeutralSecondary;

  double get toggleRadiusPriceTagContainer => globalRadiusBase;

  double get toggleRadiusPriceTagSwipe => globalRadiusInnerBase;

  double get toggleRadiusBasic => borderRadiusPill;

  double get toggleSizePriceTagHeight => formSizeVerticalS;

  double get toggleSizePriceTagWidthS => globalSizeM3;

  double get toggleSizePriceTagWidthM => globalSizeM4;

  double get toggleSizePriceTagWidthL => globalSizeL1;

  double get toggleSizeBasicKnob => globalSizeS4;

  double get toggleSizeBasicWidth => globalSizeM3;

  double get togglePadding => globalPaddingXS1;

  Color get toggleColorBGSelectedDefault => bGPrimarySolidDefault;

  Color get toggleColorBGSelectedDisabled => bGPrimarySolidDisabled;

  Color get toggleColorBGUnselectedDefault => bGNeutralSolidDisabled;

  Color get toggleColorBGUnselectedDisabled => bGNeutralFadedDisabled;

  Color get toggleColorKnobEnable => bGLayerLevel0;

  Color get toggleColorKnobDisabledSelected => bGPrimaryFadedDisabled;

  Color get toggleColorKnobDisabledUnSelected => bGNeutralSolidDisabled;

  double get wheelGutter => globalSizeS2;

  double get wheelRadius => globalRadiusBase;

  double get wheelHeightItem => globalWheelHeightItem;

  double get wheelHeightStarter => globalWheelHeightStarter;

  double get wheelHeightWrapperSelected => globalWheelHeightWrapperSelected;

  double get wheelHeightWrapperContent => globalWheelHeightWrapperContent;

  double get wheelHeightWrapperContainer5Row =>
      globalWheelHeightWrapperContainer5Rows;

  double get wheelHeightWrapperContainer3Row =>
      globalWheelHeightWrapperContainer3Rows;

  double get wheelMinWidthS => globalSizeM3;

  double get wheelMinWidthM => globalSizeL4;

  double get wheelMinWidthL => globalSizeXL3;

  Color get wheelColorWrapper => bGPrimaryFadedDefault;

  Color get wheelColorTextDefault => textNeutralTertiary;

  Color get wheelColorTextSelected => textPrimaryonWhitePrimary;

  Color get wheelColorTextSelectedUnit => textPrimaryonWhiteSecondary;

  double get wheelPaddingItem => globalPaddingS2;

  double get wheelPaddingWrapper => wheelHeightWrapperSelected;

  double get wheelPaddingVertical => globalPaddingXS2;

  double get wheelPaddingHorizontal => globalPaddingS3;

  double get wheelPaddingMonthThang1 => globalWheelPadding0;

  double get wheelPaddingMonthThang2 => globalWheelPadding1;

  double get wheelPaddingMonthThang3 => globalWheelPadding2;

  double get wheelPaddingMonthThang4 => globalWheelPadding3;

  double get wheelPaddingMonthThang5 => globalWheelPadding4;

  double get wheelPaddingMonthThang6 => globalWheelPadding5;

  double get wheelPaddingMonthThang7 => globalWheelPadding6;

  double get wheelPaddingMonthThang8 => globalWheelPadding7;

  double get wheelPaddingMonthThang9 => globalWheelPadding8;

  double get wheelPaddingMonthThang10 => globalWheelPadding9;

  double get wheelPaddingMonthThang11 => globalWheelPadding10;

  double get wheelPaddingMonthThang12 => globalWheelPadding11;

  double get wheelPaddingTimeMinute0 => globalWheelPadding0;

  double get wheelPaddingTimeMinute1 => globalWheelPadding1;

  double get wheelPaddingTimeMinute2 => globalWheelPadding2;

  double get wheelPaddingTimeMinute3 => globalWheelPadding3;

  double get wheelPaddingTimeMinute4 => globalWheelPadding4;

  double get wheelPaddingTimeMinute5 => globalWheelPadding5;

  double get wheelPaddingTimeMinute6 => globalWheelPadding6;

  double get wheelPaddingTimeMinute7 => globalWheelPadding7;

  double get wheelPaddingTimeMinute8 => globalWheelPadding8;

  double get wheelPaddingTimeMinute9 => globalWheelPadding9;

  double get wheelPaddingTimeMinute10 => globalWheelPadding10;

  double get wheelPaddingTimeMinute11 => globalWheelPadding11;

  double get wheelPaddingTimeMinute12 => globalWheelPadding12;

  double get wheelPaddingTimeMinute13 => globalWheelPadding13;

  double get wheelPaddingTimeMinute14 => globalWheelPadding14;

  double get wheelPaddingTimeMinute15 => globalWheelPadding15;

  double get wheelPaddingTimeMinute16 => globalWheelPadding16;

  double get wheelPaddingTimeMinute17 => globalWheelPadding17;

  double get wheelPaddingTimeMinute18 => globalWheelPadding18;

  double get wheelPaddingTimeMinute19 => globalWheelPadding19;

  double get wheelPaddingTimeMinute20 => globalWheelPadding20;

  double get wheelPaddingTimeMinute21 => globalWheelPadding21;

  double get wheelPaddingTimeMinute22 => globalWheelPadding22;

  double get wheelPaddingTimeMinute23 => globalWheelPadding23;

  double get wheelPaddingTimeMinute24 => globalWheelPadding24;

  double get wheelPaddingTimeMinute25 => globalWheelPadding25;

  double get wheelPaddingTimeMinute26 => globalWheelPadding26;

  double get wheelPaddingTimeMinute27 => globalWheelPadding27;

  double get wheelPaddingTimeMinute28 => globalWheelPadding28;

  double get wheelPaddingTimeMinute29 => globalWheelPadding29;

  double get wheelPaddingTimeMinute30 => globalWheelPadding30;

  double get wheelPaddingTimeMinute31 => globalWheelPadding31;

  double get wheelPaddingTimeMinute32 => globalWheelPadding32;

  double get wheelPaddingTimeMinute33 => globalWheelPadding33;

  double get wheelPaddingTimeMinute34 => globalWheelPadding34;

  double get wheelPaddingTimeMinute35 => globalWheelPadding35;

  double get wheelPaddingTimeMinute36 => globalWheelPadding36;

  double get wheelPaddingTimeMinute37 => globalWheelPadding37;

  double get wheelPaddingTimeMinute38 => globalWheelPadding38;

  double get wheelPaddingTimeMinute39 => globalWheelPadding39;

  double get wheelPaddingTimeMinute40 => globalWheelPadding40;

  double get wheelPaddingTimeMinute41 => globalWheelPadding41;

  double get wheelPaddingTimeMinute42 => globalWheelPadding42;

  double get wheelPaddingTimeMinute43 => globalWheelPadding43;

  double get wheelPaddingTimeMinute44 => globalWheelPadding44;

  double get wheelPaddingTimeMinute45 => globalWheelPadding45;

  double get wheelPaddingTimeMinute46 => globalWheelPadding46;

  double get wheelPaddingTimeMinute47 => globalWheelPadding47;

  double get wheelPaddingTimeMinute48 => globalWheelPadding48;

  double get wheelPaddingTimeMinute49 => globalWheelPadding49;

  double get wheelPaddingTimeMinute50 => globalWheelPadding50;

  double get wheelPaddingTimeMinute51 => globalWheelPadding51;

  double get wheelPaddingTimeMinute52 => globalWheelPadding52;

  double get wheelPaddingTimeMinute53 => globalWheelPadding53;

  double get wheelPaddingTimeMinute54 => globalWheelPadding54;

  double get wheelPaddingTimeMinute55 => globalWheelPadding55;

  double get wheelPaddingTimeMinute56 => globalWheelPadding56;

  double get wheelPaddingTimeMinute57 => globalWheelPadding57;

  double get wheelPaddingTimeMinute58 => globalWheelPadding58;

  double get wheelPaddingTimeMinute59 => globalWheelPadding59;

  double get wheelPaddingTime24Hours0 => globalWheelPadding0;

  double get wheelPaddingTime24Hours1 => globalWheelPadding1;

  double get wheelPaddingTime24Hours2 => globalWheelPadding2;

  double get wheelPaddingTime24Hours3 => globalWheelPadding3;

  double get wheelPaddingTime24Hours4 => globalWheelPadding4;

  double get wheelPaddingTime24Hours5 => globalWheelPadding5;

  double get wheelPaddingTime24Hours6 => globalWheelPadding6;

  double get wheelPaddingTime24Hours7 => globalWheelPadding7;

  double get wheelPaddingTime24Hours8 => globalWheelPadding8;

  double get wheelPaddingTime24Hours9 => globalWheelPadding9;

  double get wheelPaddingTime24Hours10 => globalWheelPadding10;

  double get wheelPaddingTime24Hours11 => globalWheelPadding11;

  double get wheelPaddingTime24Hours12 => globalWheelPadding12;

  double get wheelPaddingTime24Hours13 => globalWheelPadding13;

  double get wheelPaddingTime24Hours14 => globalWheelPadding14;

  double get wheelPaddingTime24Hours15 => globalWheelPadding15;

  double get wheelPaddingTime24Hours16 => globalWheelPadding16;

  double get wheelPaddingTime24Hours17 => globalWheelPadding17;

  double get wheelPaddingTime24Hours18 => globalWheelPadding18;

  double get wheelPaddingTime24Hours19 => globalWheelPadding19;

  double get wheelPaddingTime24Hours20 => globalWheelPadding20;

  double get wheelPaddingTime24Hours21 => globalWheelPadding21;

  double get wheelPaddingTime24Hours22 => globalWheelPadding22;

  double get wheelPaddingTime24Hours23 => globalWheelPadding23;

  double get wheelPaddingTime12Hours0 => globalWheelPadding0;

  double get wheelPaddingTime12Hours1 => globalWheelPadding1;

  double get wheelPaddingTime12Hours2 => globalWheelPadding2;

  double get wheelPaddingTime12Hours3 => globalWheelPadding3;

  double get wheelPaddingTime12Hours4 => globalWheelPadding4;

  double get wheelPaddingTime12Hours5 => globalWheelPadding5;

  double get wheelPaddingTime12Hours6 => globalWheelPadding6;

  double get wheelPaddingTime12Hours7 => globalWheelPadding7;

  double get wheelPaddingTime12Hours8 => globalWheelPadding8;

  double get wheelPaddingTime12Hours9 => globalWheelPadding9;

  double get wheelPaddingTime12Hours10 => globalWheelPadding10;

  double get wheelPaddingTime12Hours11 => globalWheelPadding11;

  double get wheelPaddingDate31Dates1 => globalWheelPadding0;

  double get wheelPaddingDate31Dates2 => globalWheelPadding1;

  double get wheelPaddingDate31Dates3 => globalWheelPadding2;

  double get wheelPaddingDate31Dates4 => globalWheelPadding3;

  double get wheelPaddingDate31Dates5 => globalWheelPadding4;

  double get wheelPaddingDate31Dates6 => globalWheelPadding5;

  double get wheelPaddingDate31Dates7 => globalWheelPadding6;

  double get wheelPaddingDate31Dates8 => globalWheelPadding7;

  double get wheelPaddingDate31Dates9 => globalWheelPadding8;

  double get wheelPaddingDate31Dates10 => globalWheelPadding9;

  double get wheelPaddingDate31Dates11 => globalWheelPadding10;

  double get wheelPaddingDate31Dates12 => globalWheelPadding11;

  double get wheelPaddingDate31Dates13 => globalWheelPadding12;

  double get wheelPaddingDate31Dates14 => globalWheelPadding13;

  double get wheelPaddingDate31Dates15 => globalWheelPadding14;

  double get wheelPaddingDate31Dates16 => globalWheelPadding15;

  double get wheelPaddingDate31Dates17 => globalWheelPadding16;

  double get wheelPaddingDate31Dates18 => globalWheelPadding17;

  double get wheelPaddingDate31Dates19 => globalWheelPadding18;

  double get wheelPaddingDate31Dates20 => globalWheelPadding19;

  double get wheelPaddingDate31Dates21 => globalWheelPadding20;

  double get wheelPaddingDate31Dates22 => globalWheelPadding21;

  double get wheelPaddingDate31Dates23 => globalWheelPadding22;

  double get wheelPaddingDate31Dates24 => globalWheelPadding23;

  double get wheelPaddingDate31Dates25 => globalWheelPadding24;

  double get wheelPaddingDate31Dates26 => globalWheelPadding25;

  double get wheelPaddingDate31Dates27 => globalWheelPadding26;

  double get wheelPaddingDate31Dates28 => globalWheelPadding27;

  double get wheelPaddingDate31Dates29 => globalWheelPadding28;

  double get wheelPaddingDate31Dates30 => globalWheelPadding29;

  double get wheelPaddingDate31Dates31 => globalWheelPadding30;

  double get wheelPaddingDateAMPMAM => globalWheelPadding0;

  double get wheelPaddingDateAMPMPM => globalWheelPadding1;

  double get wheelPaddingDateDDMMYY1611 => globalWheelPadding0;

  double get wheelPaddingDateDDMMYY1711 => globalWheelPadding1;

  double get wheelPaddingDateDDMMYY1811 => globalWheelPadding2;

  double get wheelPaddingDateDDMMYY1911 => globalWheelPadding3;

  double get wheelPaddingDateDDMMYY2011 => globalWheelPadding4;

  double get wheelPaddingDateDDMMYY2111 => globalWheelPadding5;

  double get wheelPaddingDateDDMMYY2211 => globalWheelPadding6;

  double get wheelPaddingDateDDMMYY2311 => globalWheelPadding7;

  double get wheelPaddingDateDDMMYY2411 => globalWheelPadding8;

  double get wheelPaddingDateDDMMYY2511 => globalWheelPadding9;

  double get wheelPaddingDateDDMMYY2611 => globalWheelPadding10;

  double get wheelPaddingDateDDMMYY2711 => globalWheelPadding11;

  double get wheelPaddingDateDDMMYY2811 => globalWheelPadding12;

  double get wheelPaddingDateDDMMYY2911 => globalWheelPadding13;

  double get wheelPaddingDateDDMMYYHomnay => globalWheelPadding14;

  double get wheelPaddingDateDDMMYY112 => globalWheelPadding15;

  double get wheelPaddingDateDDMMYY212 => globalWheelPadding16;

  double get wheelPaddingDateDDMMYY312 => globalWheelPadding17;

  double get wheelPaddingDateDDMMYY412 => globalWheelPadding18;

  double get wheelPaddingDateDDMMYY512 => globalWheelPadding19;

  double get wheelPaddingDateDDMMYY612 => globalWheelPadding20;

  double get wheelPaddingDateDDMMYY712 => globalWheelPadding21;

  double get wheelPaddingDateDDMMYY812 => globalWheelPadding22;

  double get wheelPaddingDateDDMMYY912 => globalWheelPadding23;

  double get wheelPaddingDateDDMMYY1012 => globalWheelPadding24;

  double get wheelPaddingDateDDMMYY1112 => globalWheelPadding25;

  double get wheelPaddingDateDDMMYY1212 => globalWheelPadding26;

  double get wheelPaddingDateDDMMYY1312 => globalWheelPadding27;

  double get wheelPaddingDateDDMMYY1412 => globalWheelPadding28;

  double get wheelPaddingDateDDMMYY1512 => globalWheelPadding29;

  double get wheelPaddingDateDDMMYY1612 => globalWheelPadding30;

  double get wheelPaddingDateDDMMYY1712 => globalWheelPadding31;

  double get wheelPaddingDateDDMMYY1812 => globalWheelPadding32;

  double get wheelPaddingDateDDMMYY1912 => globalWheelPadding33;

  double get wheelPaddingDateDDMMYY2012 => globalWheelPadding34;

  double get wheelPaddingDateDDMMYY2112 => globalWheelPadding35;

  double get wheelPaddingYear1934 => globalWheelPadding0;

  double get wheelPaddingYear1935 => globalWheelPadding1;

  double get wheelPaddingYear1936 => globalWheelPadding2;

  double get wheelPaddingYear1937 => globalWheelPadding3;

  double get wheelPaddingYear1938 => globalWheelPadding4;

  double get wheelPaddingYear1939 => globalWheelPadding5;

  double get wheelPaddingYear1940 => globalWheelPadding6;

  double get wheelPaddingYear1941 => globalWheelPadding7;

  double get wheelPaddingYear1942 => globalWheelPadding8;

  double get wheelPaddingYear1943 => globalWheelPadding9;

  double get wheelPaddingYear1944 => globalWheelPadding10;

  double get wheelPaddingYear1945 => globalWheelPadding11;

  double get wheelPaddingYear1946 => globalWheelPadding12;

  double get wheelPaddingYear1947 => globalWheelPadding13;

  double get wheelPaddingYear1948 => globalWheelPadding14;

  double get wheelPaddingYear1949 => globalWheelPadding15;

  double get wheelPaddingYear1950 => globalWheelPadding16;

  double get wheelPaddingYear1951 => globalWheelPadding17;

  double get wheelPaddingYear1952 => globalWheelPadding18;

  double get wheelPaddingYear1953 => globalWheelPadding19;

  double get wheelPaddingYear1954 => globalWheelPadding20;

  double get wheelPaddingYear1955 => globalWheelPadding21;

  double get wheelPaddingYear1956 => globalWheelPadding22;

  double get wheelPaddingYear1957 => globalWheelPadding23;

  double get wheelPaddingYear1958 => globalWheelPadding24;

  double get wheelPaddingYear1959 => globalWheelPadding25;

  double get wheelPaddingYear1960 => globalWheelPadding26;

  double get wheelPaddingYear1961 => globalWheelPadding27;

  double get wheelPaddingYear1962 => globalWheelPadding28;

  double get wheelPaddingYear1963 => globalWheelPadding29;

  double get wheelPaddingYear1964 => globalWheelPadding30;

  double get wheelPaddingYear1965 => globalWheelPadding31;

  double get wheelPaddingYear1966 => globalWheelPadding32;

  double get wheelPaddingYear1967 => globalWheelPadding33;

  double get wheelPaddingYear1968 => globalWheelPadding34;

  double get wheelPaddingYear1969 => globalWheelPadding35;

  double get wheelPaddingYear1970 => globalWheelPadding36;

  double get wheelPaddingYear1971 => globalWheelPadding37;

  double get wheelPaddingYear1972 => globalWheelPadding38;

  double get wheelPaddingYear1973 => globalWheelPadding39;

  double get wheelPaddingYear1974 => globalWheelPadding40;

  double get wheelPaddingYear1975 => globalWheelPadding41;

  double get wheelPaddingYear1976 => globalWheelPadding42;

  double get wheelPaddingYear1977 => globalWheelPadding43;

  double get wheelPaddingYear1978 => globalWheelPadding44;

  double get wheelPaddingYear1979 => globalWheelPadding45;

  double get wheelPaddingYear1980 => globalWheelPadding46;

  double get wheelPaddingYear1981 => globalWheelPadding47;

  double get wheelPaddingYear1982 => globalWheelPadding48;

  double get wheelPaddingYear1983 => globalWheelPadding49;

  double get wheelPaddingYear1984 => globalWheelPadding50;

  double get wheelPaddingYear1985 => globalWheelPadding51;

  double get wheelPaddingYear1986 => globalWheelPadding51;

  double get wheelPaddingYear1987 => globalWheelPadding53;

  double get wheelPaddingYear1988 => globalWheelPadding54;

  double get wheelPaddingYear1989 => globalWheelPadding55;

  double get wheelPaddingYear1990 => globalWheelPadding56;

  double get wheelPaddingYear1991 => globalWheelPadding57;

  double get wheelPaddingYear1992 => globalWheelPadding58;

  double get wheelPaddingYear1993 => globalWheelPadding59;

  double get wheelPaddingYear1994 => globalWheelPadding60;

  double get wheelPaddingYear1995 => globalWheelPadding61;

  double get wheelPaddingYear1996 => globalWheelPadding62;

  double get wheelPaddingYear1997 => globalWheelPadding63;

  double get wheelPaddingYear1998 => globalWheelPadding64;

  double get wheelPaddingYear1999 => globalWheelPadding65;

  double get wheelPaddingYear2000 => globalWheelPadding66;

  double get wheelPaddingYear2001 => globalWheelPadding67;

  double get wheelPaddingYear2002 => globalWheelPadding68;

  double get wheelPaddingYear2003 => globalWheelPadding69;

  double get wheelPaddingYear2004 => globalWheelPadding70;

  double get wheelPaddingYear2005 => globalWheelPadding71;

  double get wheelPaddingYear2006 => globalWheelPadding72;

  double get wheelPaddingYear2007 => globalWheelPadding73;

  double get wheelPaddingYear2008 => globalWheelPadding74;

  double get wheelPaddingYear2009 => globalWheelPadding75;

  double get wheelPaddingYear2010 => globalWheelPadding76;

  double get wheelPaddingYear2011 => globalWheelPadding77;

  double get wheelPaddingYear2012 => globalWheelPadding78;

  double get wheelPaddingYear2013 => globalWheelPadding79;

  double get wheelPaddingYear2014 => globalWheelPadding80;

  double get wheelPaddingYear2015 => globalWheelPadding81;

  double get wheelPaddingYear2016 => globalWheelPadding82;

  double get wheelPaddingYear2017 => globalWheelPadding83;

  double get wheelPaddingYear2018 => globalWheelPadding84;

  double get wheelPaddingYear2019 => globalWheelPadding85;

  double get wheelPaddingYear2020 => globalWheelPadding86;

  double get wheelPaddingYear2021 => globalWheelPadding87;

  double get wheelPaddingYear2022 => globalWheelPadding88;

  double get wheelPaddingYear2023 => globalWheelPadding89;

  double get wheelPaddingYear2024 => globalWheelPadding90;

  double get wheelPaddingYear2025 => globalWheelPadding91;

  double get wheelPaddingYear2026 => globalWheelPadding92;

  double get wheelPaddingYear2027 => globalWheelPadding93;

  double get wheelPaddingYear2028 => globalWheelPadding94;

  double get wheelPaddingYear2029 => globalWheelPadding95;

  double get wheelPaddingYear2030 => globalWheelPadding96;

  double get wheelPaddingYear2031 => globalWheelPadding97;

  double get wheelPaddingYear2032 => globalWheelPadding98;

  double get wheelPaddingYear2033 => globalWheelPadding99;

  double get wheelPaddingYear2034 => globalWheelPadding100;

  double get wheelPaddingDayThuHai => globalWheelPadding0;

  double get wheelPaddingDayThuBa => globalWheelPadding1;

  double get wheelPaddingDayThuTu => globalWheelPadding2;

  double get wheelPaddingDayThuNam => globalWheelPadding3;

  double get wheelPaddingDayThuSau => globalWheelPadding4;

  double get wheelPaddingDayThuBay => globalWheelPadding5;

  double get wheelPaddingDayChuNhat => globalWheelPadding6;

  double get minimumTapArea => sizeBox10;

  double get formSizeVerticalXXXS => globalSizeS3;

  double get formSizeVerticalXXS => globalSizeS4;

  double get formSizeVerticalXS => globalSizeM1;

  double get formSizeVerticalS => globalSizeM2;

  double get formSizeVerticalM => globalSizeM3;

  double get formSizeVerticalL => globalSizeM4;

  double get formSizeVerticalXL => globalSizeL1;

  double get formSizeHorizontalM => globalSizeXL3;

  double get formSizeHorizontalS => globalSizeXL1;

  Color get colorTextFunctionalProductproperty => textWarningActionDefault;

  double get globalRadiusMin => borderRadius1H;

  double get globalRadiusBase => borderRadius2H;

  double get globalRadiusInnerBase => borderRadius2;

  double get globalRadiusSection => borderRadius4;

  double get paddingBodyHorizontalCenter => globalPaddingS3;

  double get paddingBodyHorizontalFluid => 0;

  double get paddingBodyBottom => globalPaddingL4;

  double get paddingBodyTopHeaderSolid => globalPaddingS3;

  double get paddingBodyTopHeaderTransperent => 0;

  double get paddingContainer => globalPaddingS3;

  double get applicationGutter => 0;

  double get strokeMH => 0.5;

  double get strokeM => 1;

  double get strokeL => 2;

  double get gutterBlock => globalGutterM1;

  double get gutterItemHorizontal => globalGutterXS1;

  double get gutterItemVertical => globalGutterXS1;

  double get gutterElementHorizontal => globalGutterS1;

  double get gutterElementVertical => globalGutterS1;

  double get gutterSectionVertical => globalGutterS3;

  double get gutterSectionHorizontal => globalGutterS2;

  double get gutterApplicationVertical => 0;

  Color get buttonColorTextPrimarySolidEnabled => textPrimaryonSolidPrimary;

  Color get buttonColorTextPrimarySolidDisabled =>
      textPrimaryonDisabledDisabled;

  Color get buttonColorTextPrimaryFadedEnabled => textPrimaryonFadedSecondary;

  Color get buttonColorTextPrimaryFadedDisabled => textPrimaryonFadedDisabled;

  Color get buttonColorTextPrimaryOutlineEnabled => textPrimaryonWhiteSecondary;

  Color get buttonColorTextPrimaryOutlineDisabled => textPrimaryonWhiteDisabled;

  Color get buttonColorTextPrimaryTertiaryEnabled =>
      textPrimaryonWhiteSecondary;

  Color get buttonColorTextPrimaryTertiaryDisabled =>
      textPrimaryonWhiteDisabled;

  Color get buttonColorTextPrimaryonWhiteEnabled => textPrimaryonWhiteSecondary;

  Color get buttonColorTextPrimaryonWhiteDisabled => textPrimaryonWhiteDisabled;

  Color get buttonColorTextSuccessSolidEnabled => textSuccessonSolidPrimary;

  Color get buttonColorTextSuccessSolidDisabled =>
      textSuccessonDisabledDisabled;

  Color get buttonColorTextSuccessFadedEnabled => textSuccessonFadedSecondary;

  Color get buttonColorTextSuccessFadedDisabled => textSuccessonFadedDisabled;

  Color get buttonColorTextSuccessOutlineEnabled => textSuccessonWhiteSecondary;

  Color get buttonColorTextSuccessOutlineDisabled => textSuccessonWhiteDisabled;

  Color get buttonColorTextSuccessTertiaryEnabled =>
      textSuccessonWhiteSecondary;

  Color get buttonColorTextSuccessTertiaryDisabled =>
      textSuccessonWhiteDisabled;

  Color get buttonColorTextSuccessonWhiteEnabled => textSuccessonWhiteSecondary;

  Color get buttonColorTextSuccessonWhiteDisabled => textSuccessonWhiteDisabled;

  Color get buttonColorTextWarningSolidEnabled => textWarningonSolidPrimary;

  Color get buttonColorTextWarningSolidDisabled =>
      textWarningonDisabledDisabled;

  Color get buttonColorTextWarningFadedEnabled => textWarningonFadedSecondary;

  Color get buttonColorTextWarningFadedDisabled => textWarningonFadedDisabled;

  Color get buttonColorTextWarningOutlineEnabled => textWarningonWhiteSecondary;

  Color get buttonColorTextWarningOutlineDisabled => textWarningonWhiteDisabled;

  Color get buttonColorTextWarningTertiaryEnabled =>
      textWarningonWhiteSecondary;

  Color get buttonColorTextWarningTertiaryDisabled =>
      textWarningonWhiteDisabled;

  Color get buttonColorTextWarningonWhiteEnabled => textWarningonWhiteSecondary;

  Color get buttonColorTextWarningonWhiteDisabled => textWarningonWhiteDisabled;

  Color get buttonColorTextDangerSolidEnabled => textDangeronSolidPrimary;

  Color get buttonColorTextDangerSolidDisabled => textDangeronDisabledDisabled;

  Color get buttonColorTextDangerFadedEnabled => textDangeronFadedSecondary;

  Color get buttonColorTextDangerFadedDisabled => textDangeronFadedDisabled;

  Color get buttonColorTextDangerOutlineEnabled => textDangeronWhiteSecondary;

  Color get buttonColorTextDangerOutlineDisabled => textDangeronWhiteDisabled;

  Color get buttonColorTextDangerTertiaryEnabled => textDangeronWhiteSecondary;

  Color get buttonColorTextDangerTertiaryDisabled => textDangeronWhiteDisabled;

  Color get buttonColorTextDangeronWhiteEnabled => textDangeronWhiteSecondary;

  Color get buttonColorTextDangeronWhiteDisabled => textDangeronWhiteDisabled;

  Color get buttonColorTextNeutralSolidEnabled => textNeutralonSolidDefault;

  Color get buttonColorTextNeutralSolidDisabled =>
      textNeutralonDisabledDisabled;

  Color get buttonColorTextNeutralFadedEnabled => textNeutralStrong;

  Color get buttonColorTextNeutralFadedDisabled => textNeutralDisabled;

  Color get buttonColorTextNeutralOutlineEnabled => textNeutralDefault;

  Color get buttonColorTextNeutralOutlineDisabled => textNeutralDisabled;

  Color get buttonColorTextNeutralTertiaryEnabled => textNeutralDefault;

  Color get buttonColorTextNeutralTertiaryDisabled => textNeutralDisabled;

  Color get buttonColorTextNeutralonWhiteEnabled => textNeutralLabel;

  Color get buttonColorTextNeutralonWhiteDisabled => textNeutralDisabled;

  Color get buttonColorTextPromotionSolidEnabled => textPromotiononSolidPrimary;

  Color get buttonColorTextPromotionSolidDisabled =>
      textPromotiononDisabledDisabled;

  Color get buttonColorTextPromotionFadedEnabled =>
      textPromotiononFadedSecondary;

  Color get buttonColorTextPromotionFadedDisabled =>
      textPromotiononFadedDisabled;

  Color get buttonColorTextPromotionOutlineEnabled =>
      textPromotiononWhiteSecondary;

  Color get buttonColorTextPromotionOutlineDisabled =>
      textPromotiononWhiteDisabled;

  Color get buttonColorTextPromotionTertiaryEnabled =>
      textPromotiononWhiteSecondary;

  Color get buttonColorTextPromotionTertiaryDisabled =>
      textPromotiononWhiteDisabled;

  Color get buttonColorTextPromotiononWhiteEnabled =>
      textPromotiononWhiteSecondary;

  Color get buttonColorTextPromotiononWhiteDisabled =>
      textPromotiononWhiteDisabled;

  Color get buttonColorBGPrimarySolidDefault => bGPrimarySolidDefault;

  Color get buttonColorBGPrimarySolidPressed => bGPrimarySolidPressed;

  Color get buttonColorBGPrimarySolidDisabled => bGPrimarySolidDisabled;

  Color get buttonColorBGPrimaryFadedDefault => bGPrimaryFadedDefault;

  Color get buttonColorBGPrimaryFadedPressed => bGPrimaryFadedPressed;

  Color get buttonColorBGPrimaryFadedDisabled => bGPrimaryFadedDisabled;

  Color get buttonColorBGPrimaryFadedDisabledtest => bGPrimaryFadedDisabled;

  Color get buttonColorBGPrimaryOutlineDefault => bGPrimaryTertiaryDefault;

  Color get buttonColorBGPrimaryOutlinePressed => bGPrimaryTertiaryPressed;

  Color get buttonColorBGPrimaryOutlineDisabled => bGPrimaryTertiaryDisabled;

  Color get buttonColorBGPrimaryTertiaryDefault => bGPrimaryTertiaryDefault;

  Color get buttonColorBGPrimaryTertiaryPressed => bGPrimaryTertiaryPressed;

  Color get buttonColorBGPrimaryTertiaryDisabled => bGPrimaryTertiaryDisabled;

  Color get buttonColorBGPrimaryonWhitePressed => bGPrimaryTertiaryPressed;

  Color get buttonColorBGPrimaryonWhiteDisabled => bGLayerLevel0;

  Color get buttonColorBGSuccessSolidDefault => bGSuccessSolidDefault;

  Color get buttonColorBGSuccessSolidPressed => bGSuccessSolidPressed;

  Color get buttonColorBGSuccessSolidDisabled => bGSuccessSolidDisabled;

  Color get buttonColorBGSuccessSolidtest => bGSuccessSolidDefault;

  Color get buttonColorBGSuccessFadedDefault => bGSuccessFadedDefault;

  Color get buttonColorBGSuccessFadedPressed => bGSuccessFadedPressed;

  Color get buttonColorBGSuccessFadedDisabled => bGSuccessFadedDisabled;

  Color get buttonColorBGSuccessOutlineDefault => bGSuccessTertiaryDefault;

  Color get buttonColorBGSuccessOutlinePressed => bGSuccessTertiaryPressed;

  Color get buttonColorBGSuccessOutlineDisabled => bGSuccessTertiaryDisabled;

  Color get buttonColorBGSuccessTertiaryDefault => bGSuccessTertiaryDefault;

  Color get buttonColorBGSuccessTertiaryPressed => bGSuccessTertiaryPressed;

  Color get buttonColorBGSuccessTertiaryDisabled => bGSuccessTertiaryDisabled;

  Color get buttonColorBGSuccessonWhitePressed => bGSuccessTertiaryPressed;

  Color get buttonColorBGSuccessonWhiteDisabled => bGSuccessTertiaryDisabled;

  Color get buttonColorBGWarningSolidDefault => bGWarningSolidDefault;

  Color get buttonColorBGWarningSolidPressed => bGWarningSolidPressed;

  Color get buttonColorBGWarningSolidDisabled => bGWarningSolidDisabled;

  Color get buttonColorBGWarningFadedDefault => bGWarningFadedDefault;

  Color get buttonColorBGWarningFadedPressed => bGWarningFadedPressed;

  Color get buttonColorBGWarningFadedDisabled => bGWarningFadedDisabled;

  Color get buttonColorBGWarningOutlineDefault => bGWarningTertiaryDefault;

  Color get buttonColorBGWarningOutlinePressed => bGWarningTertiaryPressed;

  Color get buttonColorBGWarningOutlineDisabled => bGWarningTertiaryDisabled;

  Color get buttonColorBGWarningTertiaryDefault => bGWarningTertiaryDefault;

  Color get buttonColorBGWarningTertiaryPressed => bGWarningTertiaryPressed;

  Color get buttonColorBGWarningTertiaryDisabled => bGWarningTertiaryDisabled;

  Color get buttonColorBGWarningonWhitePressed => bGWarningTertiaryPressed;

  Color get buttonColorBGWarningonWhiteDisabled => bGWarningTertiaryDisabled;

  Color get buttonColorBGDangerSolidDefault => bGDangerSolidDefault;

  Color get buttonColorBGDangerSolidPressed => bGDangerSolidPressed;

  Color get buttonColorBGDangerSolidDisabled => bGDangerSolidDisabled;

  Color get buttonColorBGDangerFadedDefault => bGDangerFadedDefault;

  Color get buttonColorBGDangerFadedPressed => bGDangerFadedPressed;

  Color get buttonColorBGDangerFadedDisabled => bGDangerFadedDisabled;

  Color get buttonColorBGDangerOutlineDefault => bGDangerTertiaryDefault;

  Color get buttonColorBGDangerOutlinePressed => bGDangerTertiaryPressed;

  Color get buttonColorBGDangerOutlineDisabled => bGDangerTertiaryDisabled;

  Color get buttonColorBGDangerTertiaryDefault => bGDangerTertiaryDefault;

  Color get buttonColorBGDangerTertiaryPressed => bGDangerTertiaryPressed;

  Color get buttonColorBGDangerTertiaryDisabled => bGDangerTertiaryDisabled;

  Color get buttonColorBGDangeronWhitePressed => bGDangerTertiaryPressed;

  Color get buttonColorBGDangeronWhiteDisabled => bGDangerTertiaryDisabled;

  Color get buttonColorBGNeutralSolidDefault => bGNeutralSolidDefault;

  Color get buttonColorBGNeutralSolidPressed => bGNeutralSolidPressed;

  Color get buttonColorBGNeutralSolidDisabled => bGNeutralSolidDisabled;

  Color get buttonColorBGNeutralFadedDefault => bGNeutralFadedDefault;

  Color get buttonColorBGNeutralFadedPressed => bGNeutralFadedPressed;

  Color get buttonColorBGNeutralFadedDisabled => bGNeutralFadedDisabled;

  Color get buttonColorBGNeutralOutlineDefault => bGNeutralTertiaryDefault;

  Color get buttonColorBGNeutralOutlinePressed => bGNeutralTertiaryPressed;

  Color get buttonColorBGNeutralOutlineDisabled => bGNeutralTertiaryDisabled;

  Color get buttonColorBGNeutralTertiaryDefault => bGNeutralTertiaryDefault;

  Color get buttonColorBGNeutralTertiaryPressed => bGNeutralTertiaryPressed;

  Color get buttonColorBGNeutralTertiaryDisabled => bGNeutralTertiaryDisabled;

  Color get buttonColorBGNeutralonWhitePressed => bGNeutralTertiaryPressed;

  Color get buttonColorBGNeutralonWhiteDisabled => bGNeutralTertiaryDisabled;

  Color get buttonColorBGPromotionSolidDefault => bGPromotionSolidDefault;

  Color get buttonColorBGPromotionSolidPressed => bGPromotionSolidPressed;

  Color get buttonColorBGPromotionSolidDisabled => bGPromotionSolidDisabled;

  Color get buttonColorBGPromotionFadedDefault => bGPromotionFadedDefault;

  Color get buttonColorBGPromotionFadedPressed => bGPromotionFadedPressed;

  Color get buttonColorBGPromotionFadedDisabled => bGPromotionFadedDisabled;

  Color get buttonColorBGPromotionOutlineDefault => bGPromotionTertiaryDefault;

  Color get buttonColorBGPromotionOutlinePressed => bGPromotionTertiaryPressed;

  Color get buttonColorBGPromotionOutlineDisabled =>
      bGPromotionTertiaryDisabled;

  Color get buttonColorBGPromotionTertiaryDefault => bGPromotionTertiaryDefault;

  Color get buttonColorBGPromotionTertiaryPressed => bGPromotionTertiaryPressed;

  Color get buttonColorBGPromotionTertiaryDisabled =>
      bGPromotionTertiaryDisabled;

  Color get buttonColorBGPromotiononWhitePressed => bGPromotionTertiaryPressed;

  Color get buttonColorBGPromotiononWhiteDisabled =>
      bGPromotionTertiaryDisabled;

  Color get buttonColorBGonWhite => bGLayerLevel0;

  Color get buttonColorBorderPrimaryEnabled => borderPrimaryDefault;

  Color get buttonColorBorderPrimaryDisabled => borderPrimaryDisabled;

  Color get buttonColorBorderSuccessEnabled => borderSuccessDefault;

  Color get buttonColorBorderSuccessDisabled => borderSuccessDisabled;

  Color get buttonColorBorderWarningEnabled => borderWarningDefault;

  Color get buttonColorBorderWarningDisabled => borderWarningDisabled;

  Color get buttonColorBorderDangerEnabled => borderDangerDefault;

  Color get buttonColorBorderDangerDisabled => borderDangerDisabled;

  Color get buttonColorBorderNeutralEnabled => borderNeutralDefault;

  Color get buttonColorBorderNeutralDisabled => borderNeutralDisabled;

  Color get buttonColorBorderPromotionEnabled => borderPromotionDefault;

  Color get buttonColorBorderPromotionDisabled => borderPromotionDisabled;

  Color get buttonColorIconCircleTextEnabled => iconNeutralPrimaryAction;

  Color get buttonColorIconCircleTextDisabled => iconNeutralDisabled;

  Color get buttonColorIconCircleFadedEnabled =>
      iconNeutralonFadedPrimaryAction;

  Color get buttonColorIconCircleFadedDisabled => iconNeutralonFadedDisabled;

  double get buttonSizeXS => formSizeVerticalXS;

  double get buttonSizeS => formSizeVerticalS;

  double get buttonSizeM => formSizeVerticalM;

  double get buttonSizeL => formSizeVerticalL;

  double get buttonSizeXL => formSizeVerticalXL;

  double get buttonSizeGutterS => globalGutterS1;

  double get buttonSizeGutterM => globalGutterS2H;

  double get buttonSizeGutterL => globalGutterS2;

  double get buttonSizeGutterXL => globalGutterS3H;

  double get buttonSizePaddingHorizontalS => globalPaddingS2;

  double get buttonSizePaddingHorizontalM => globalPaddingS3;

  double get buttonSizePaddingHorizontalL => globalPaddingS4;

  double get buttonSizePaddingHorizontalXL => globalPaddingM1;

  double get buttonSizePaddingVerticalS => globalPaddingS1;

  double get buttonSizePaddingVerticalM => globalPaddingS2H;

  double get buttonSizePaddingVerticalL => globalPaddingS2;

  double get buttonSizePaddingVerticalXL => globalPaddingS3H;

  double get buttonSizeRadius => borderRadiusPill;

  double get buttonSizeBorderStrokeWidth => globalStrokeMH;

  double get buttonSizeAbsoluteS => iconSSize;

  double get buttonRadius => globalRadiusBase;

  double get buttonComboSizeButtonCircleGroupWidth => globalSizeL3;

  double get buttonComboSizeButtonCircleWidth => globalSizeM2;

  double get buttonGroupGutterVertical => gutterElementVertical;

  double get buttonGroupGutterHorizontal => gutterElementHorizontal;

  double get buttonGroupPaddingTop => globalPaddingS3;

  double get buttonGroupPaddingRight => globalPaddingS3;

  double get buttonGroupPaddingBottom => globalPaddingS1;

  double get buttonGroupPaddingLeft => globalPaddingS3;

  Color get buttonInlineColorTextPrimaryDefault => textPrimaryActionDefault;

  Color get buttonInlineColorTextPrimaryDisabled => textPrimaryonWhiteDisabled;

  Color get buttonInlineColorTextNeutralDefault => textNeutralSecondary;

  Color get buttonInlineColorTextNeutralDisabled => textNeutralDisabled;

  Color get buttonInlineColorIconPrimaryDefault =>
      buttonInlineColorTextPrimaryDefault;

  Color get buttonInlineColorIconPrimaryDisabled =>
      buttonInlineColorTextPrimaryDisabled;

  Color get buttonInlineColorIconNeutralDefault =>
      buttonInlineColorTextNeutralDefault;

  Color get buttonInlineColorIconNeutralDisabled =>
      buttonInlineColorTextNeutralDisabled;

  double get buttonInlineGutterS => gutter1;

  double get buttonInlineGutterM => gutter2;

  double get buttonInlineGutterL => gutter3;

  double get buttonFABSizeMainButton => buttonSizeXL;

  double get buttonFABGutterItemGroupVertical => globalGutterS1;

  double get buttonFABGutterItemGroupHorizontal => globalGutterS2;

  Color get buttonFABColorBGSolidDefault => buttonColorBGPrimarySolidDefault;

  Color get buttonFABColorBGSolidPressed => buttonColorBGPrimarySolidPressed;

  Color get buttonFABColorBGonWhiteDefault => bGLayerLevel0;

  Color get buttonFABColorBGonWhitePressed => bGPrimaryTertiaryPressed;

  Color get buttonFABColorIconSolid => iconPrimaryonSolidPrimaryAction;

  Color get buttonFABColorIcononWhite => textPrimaryonWhiteSecondary;

  double get buttonFABPaddingItemGroupBottom => globalPaddingL4;

  double get buttonFABPaddingItemGroupRight => globalPaddingS4;

  double get buttonFABMarginBottomWithTabbar => globalMarginM1;

  double get buttonFABMarginBottomWithoutTabbar => globalMarginM3;

  double get buttonFABMarginHorizontal => globalMarginS4;

  double get sectionGutterBody => 0;

  double get sectionGutterGroupBody => globalGutterS3;

  double get sectionGutterContent => globalGutterS1;

  double get sectionRadius => globalRadiusSection;

  double get sectionPaddingVertical => globalPaddingS1;

  double get sectionPaddingHeaderVertical => globalPaddingS1;

  double get sectionPaddingContentHorizontal => globalPaddingS3;

  double get sectionPaddingContentVertical => globalPaddingS1;

  double get dividerStrokeLine => strokeM;

  double get dividerStrokeSection => strokeL;

  double get dividerStrokeOutline => strokeMH;

  double get buttonTagGutter => gutterItemVertical;

  double get buttonTagSizeMinWidth => globalSizeL1;

  double get buttonTagPaddingVertical => globalPaddingXS2H;

  double get buttonTagPaddingHorizontal => globalPaddingS1;

  double get introPaddingCaptionHorizontal => globalPaddingM1;

  double get headerPaddingHorizontal => paddingContainer;

  double get headerPaddingBottom => globalPaddingS1;

  double get headerPaddingTop => safeAreaPaddingTop;

  double get headerPaddingSubHeaderFilterVertical => globalPaddingS1;

  double get headerPaddingSubHeaderFilterHorizontal => globalPaddingS3;

  double get headerPaddingSubHeaderMetricVerticalTop => globalPaddingXS2H;

  double get headerPaddingSubHeaderMetricVerticalBottom => globalPaddingS1;

  double get headerPaddingSubHeaderMetricHorizontal => paddingContainer;

  double get headerPaddingSubHeaderBITimeFrameVerticalBottom => globalPaddingS1;

  double get headerRadius => globalRadiusSection;

  double get headerGutterHorizontal => gutterElementHorizontal;

  double get headerGutterSubHeaderFilterHorizontal => gutterElementHorizontal;

  double get headerGutterSubHeaderBITimeFrameVertical => gutterElementVertical;

  double get headerSizeMinHeightMainContent => globalSizeM4H;

  double get headerSizeMinHeightPrefix => globalSizeM3;

  double get headerSizeSubHeaderActionGroupMinWidth => globalSizeL3;

  double get tabbarPaddingItemHorizontal => globalPaddingS1;

  double get tabbarPaddingItemTop => globalPaddingS3;

  double get tabbarPaddingContainerBottom => globalPaddingS1;

  double get tabbarBottom => safeAreaHeightBottom;

  double get tabbarRadius => globalRadiusSection;

  double get tabbarGutterItem => globalGutterS1;

  Color get tabbarColorTextItemSelected => textPrimaryActionDefault;

  Color get tabbarColorTextItemDefault => textNeutralSecondary;

  Color get tabbarColorTextItemDisabled => textNeutralDisabled;

  Color get tabbarColorTextActionItem => textPrimaryonSolidPrimary;

  Color get tabbarColorBGActionItemDefault => bGPrimarySolidDefault;

  Color get tabbarColorBGActionItemPressed => bGPrimarySolidPressed;

  double get tabbarSizeActionItem => globalSizeM4;

  double get tabWidthBar => globalSizeM3;

  Color get tabColorBGBar => bGPrimarySolidDefault;

  Color get tabColorTextDefault => textNeutralSecondary;

  Color get tabColorTextSelected => textPrimaryActionDefault;

  Color get tabColorTextDisabled => textNeutralDisabled;

  Color get tabColorIconTabIconSelected => iconPrimaryLabel;

  double get tabHeight => 3;

  double get tabPaddingHorizontalItem => globalPaddingS3;

  double get tabPaddingHorizontalIcon => globalPaddingS1;

  double get tabPaddingVerticalTopS => globalPaddingXS2;

  double get tabPaddingVerticalTopM => globalPaddingXS3;

  double get tabPaddingVerticalBottom => globalPaddingS2;

  double get tabGutterS => globalGutterXS2;

  double get tabGutterM => globalGutterS1;

  Color get swipeColorDivider => dividerDot;

  Color get swipeColorTextDefault => textNeutralDefault;

  Color get swipeColorTextSelectedPrimary => textPrimaryonSolidPrimary;

  Color get swipeColorTextSelectedWhite => textNeutralBase;

  Color get swipeColorTextDisabled => textNeutralDisabled;

  double get swipeGutter => gutterItemHorizontal;

  double get swipePaddingContainer => globalPaddingXS2H;

  double get swipePaddingDivider => padding2;

  double get swipeRadiusOutside => globalRadiusBase;

  double get swipeRadiusInside => globalRadiusInnerBase;

  double get swipeSizeItem => globalSizeM2;

  double get swipeSizeContainer => globalSizeM3;

  double get sheetRadius => globalRadiusSection;

  Color get sheetColorGrabber => neutral150;

  double get sheetGutter => 0;

  double get sheetMarginAction => globalMarginM3;

  double get sheetPaddingContentHorizontal => paddingContainer;

  double get sheetPaddingHeaderHorizontal => paddingContainer;

  double get sheetPaddingHeaderTop => paddingContainer;

  double get sheetSizeMaxHeight => sheetMaxHeight;

  double get sheetSizeMinHeight => sheetMinHeight;

  double get sheetSizeGrabberWidth => globalSizeM4;

  double get sheetSizeGrabberHeight => 6;

  double get badgeRadius => borderRadiusPill;

  Color get badgeColorBGPrimarySolidDefault => bGPrimarySolidDefault;

  Color get badgeColorBGPrimarySolidDisabled => bGPrimarySolidDisabled;

  Color get badgeColorBGPrimaryonSolidDefault => bGLayerLevel0;

  Color get badgeColorBGPrimaryonSolidDisabled => textPrimaryonDisabledDisabled;

  Color get badgeColorBGSuccessSolidDefault => bGSuccessSolidDefault;

  Color get badgeColorBGSuccessSolidDisabled => bGSuccessSolidDisabled;

  Color get badgeColorBGSuccessonSolidDefault => bGLayerLevel0;

  Color get badgeColorBGSuccessonSolidDisabled => textSuccessonDisabledDisabled;

  Color get badgeColorBGWarningSolidDefault => bGWarningSolidDefault;

  Color get badgeColorBGWarningSolidDisabled => bGWarningSolidDisabled;

  Color get badgeColorBGWarningonSolidDefault => bGLayerLevel0;

  Color get badgeColorBGWarningonSolidDisabled => textWarningonDisabledDisabled;

  Color get badgeColorBGDangerSolidDefault => bGDangerSolidDefault;

  Color get badgeColorBGDangerSolidDisabled => bGDangerSolidDisabled;

  Color get badgeColorBGDangeronSolidDefault => bGLayerLevel0;

  Color get badgeColorBGDangeronSolidDisabled => textDangeronDisabledDisabled;

  Color get badgeColorBGNeutralSolidDefault => bGNeutralSolidDefault;

  Color get badgeColorBGNeutralSolidDisabled => bGNeutralSolidDisabled;

  Color get badgeColorBGNeutralonSolidDefault => bGLayerLevel0;

  Color get badgeColorBGNeutralonSolidDisabled => textNeutralonDisabledDisabled;

  Color get badgeColorTextPrimarySolidDefault => textNeutralonSolidDefault;

  Color get badgeColorTextPrimarySolidDisabled => textPrimaryonDisabledDisabled;

  Color get badgeColorTextPrimaryOutlineDefault => textPrimaryActionDefault;

  Color get badgeColorTextPrimaryOutlineDisabled => textPrimaryonWhiteDisabled;

  Color get badgeColorTextPrimaryonSolidDefault => textPrimaryActionDefault;

  Color get badgeColorTextPrimaryonSolidDisabled => bGPrimarySolidDisabled;

  Color get badgeColorTextSuccessSolidDefault => textNeutralonSolidDefault;

  Color get badgeColorTextSuccessSolidDisabled => textSuccessonDisabledDisabled;

  Color get badgeColorTextSuccessOutlineDefault => textSuccessonWhiteQuartary;

  Color get badgeColorTextSuccessOutlineDisabled => textSuccessonWhiteDisabled;

  Color get badgeColorTextSuccessonSolidDefault => textSuccessonWhiteQuartary;

  Color get badgeColorTextSuccessonSolidDisabled => bGSuccessSolidDisabled;

  Color get badgeColorTextWarningSolidDefault => textNeutralonSolidDefault;

  Color get badgeColorTextWarningSolidDisabled => textWarningonDisabledDisabled;

  Color get badgeColorTextWarningOutlineDefault => textWarningonWhiteQuartary;

  Color get badgeColorTextWarningOutlineDisabled => textWarningonWhiteDisabled;

  Color get badgeColorTextWarningonSolidDefault => textWarningonWhiteQuartary;

  Color get badgeColorTextWarningonSolidDisabled => bGWarningSolidDisabled;

  Color get badgeColorTextDangerSolidDefault => textNeutralonSolidDefault;

  Color get badgeColorTextDangerSolidDisabled => textDangeronDisabledDisabled;

  Color get badgeColorTextDangerOutlineDefault => textDangeronWhiteTertiary;

  Color get badgeColorTextDangerOutlineDisabled => textDangeronWhiteDisabled;

  Color get badgeColorTextDangeronSolidDefault => textDangeronWhiteTertiary;

  Color get badgeColorTextDangeronSolidDisabled => bGDangerSolidDisabled;

  Color get badgeColorTextNeutralSolidDefault => textNeutralonSolidDefault;

  Color get badgeColorTextNeutralSolidDisabled => textNeutralonDisabledDisabled;

  Color get badgeColorTextNeutralOutlineDefault => textNeutralDefault;

  Color get badgeColorTextNeutralOutlineDisabled => textNeutralDisabled;

  Color get badgeColorTextNeutralonSolidDefault => textNeutralDefault;

  Color get badgeColorTextNeutralonSolidDisabled => bGNeutralSolidDisabled;

  Color get badgeColorBorderPrimaryDefault => borderPrimaryDefault;

  Color get badgeColorBorderPrimaryDisabled => borderPrimaryDisabled;

  Color get badgeColorBorderSuccessDefault => borderSuccessDefault;

  Color get badgeColorBorderSuccessDisabled => borderSuccessDisabled;

  Color get badgeColorBorderWarningDefault => borderWarningDefault;

  Color get badgeColorBorderWarningDisabled => borderWarningDisabled;

  Color get badgeColorBorderDangerDefault => borderDangerDefault;

  Color get badgeColorBorderDangerDisabled => borderDangerDisabled;

  Color get badgeColorBorderNeutralDefault => borderNeutralDefault;

  Color get badgeColorBorderNeutralDisabled => borderNeutralDisabled;

  double get badgeStroke => globalStrokeM;

  double get badgeSizeSHeight => globalSizeS3;

  double get badgeSizeSPaddingHorizontal => globalPaddingXS1;

  double get badgeSizeSMinWidth => globalSizeS3;

  double get badgeSizeMHeight => globalSizeS4;

  double get badgeSizeMPaddingHorizontal => globalPaddingXS2;

  double get badgeSizeMMinWidth => globalSizeS4;

  double get badgeSizeLHeight => globalSizeM1;

  double get badgeSizeLPaddingHorizontal => globalPaddingXS3;

  double get badgeSizeLMinWidth => globalSizeM1;

  double get badgeSizeXLHeight => globalSizeM2H;

  double get badgeSizeXLPaddingHorizontal => globalPaddingS1;

  double get badgeSizeXLMinWidth => globalSizeM2H;

  double get badgeDotStrokeWidth => globalStrokeMH;

  Color get badgeDotStroke => borderonSolid;

  double get badgeDotSizeM => globalSizeS1;

  double get chipStrokeWidth => buttonSizeBorderStrokeWidth;

  double get chipGutterS => globalGutterXS2;

  double get chipGutterM => globalGutterXS3;

  double get chipGutterL => globalGutterS1;

  double get chipPaddingS => globalPaddingS1;

  double get chipPaddingM => globalPaddingS2;

  double get chipPaddingL => globalPaddingS3;

  double get chipPaddingAvatarS => globalPaddingXS1;

  double get chipPaddingAvatarM => globalPaddingXS2;

  double get chipPaddingAvatarL => globalPaddingXS3;

  double get chipPaddingIconOnlyS => globalPaddingXS3;

  double get chipPaddingIconOnlyM => globalPaddingS1;

  double get chipPaddingIconOnlyL => globalPaddingS2H;

  Color get chipColorBorderUnSelectedDefault => borderNeutralFaded;

  Color get chipColorBorderUnSelectedDisabled => borderNeutralDisabled;

  Color get chipColorBorderSelectedDefault => borderPrimarySecondary;

  Color get chipColorBorderSelectedDisabled => borderPrimaryDisabled;

  Color get chipColorTextActiveDefault => textPrimaryonSolidPrimary;

  Color get chipColorTextActiveDisabled => textPrimaryonDisabledDisabled;

  Color get chipColorTextUnSelectedDefault => textNeutralBase;

  Color get chipColorTextUnSelectedDisabled => textNeutralDisabled;

  Color get chipColorTextSelectedDefault => textPrimaryonFadedSecondary;

  Color get chipColorTextSelectedDisabled => textPrimaryonWhiteDisabled;

  Color get chipColorBGActiveDefault => badgeColorBGPrimarySolidDefault;

  Color get chipColorBGActiveDisabled => bGPrimarySolidDisabled;

  Color get chipColorBGUnSelectedFadedDefault => bGNeutralFadedDefault;

  Color get chipColorBGUnSelectedFadedPressed => bGNeutralFadedPressed;

  Color get chipColorBGUnSelectedFadedDisabled => bGNeutralFadedDisabled;

  Color get chipColorBGUnSelectedOutlinePressed => bGNeutralTertiaryPressed;

  Color get chipColorBGUnSelectedSolidDefault => bGLayerLevel0;

  Color get chipColorBGUnSelectedSolidPressed => bGNeutralTertiaryPressed;

  Color get chipColorBGUnSelectedSolidDisabled => bGLayerLevel0;

  Color get chipColorBGSelectedDefault => bGPrimaryFadedDefault;

  Color get chipColorBGSelectedDisabled => bGPrimaryFadedDisabled;

  double get chipSizeS => formSizeVerticalXS;

  double get chipSizeM => formSizeVerticalS;

  double get chipSizeL => formSizeVerticalM;

  double get chipMinWidthS => formSizeVerticalXS;

  double get chipMinWidthM => formSizeVerticalS;

  double get chipMinWidthL => formSizeVerticalM;

  double get progressBarHeight => 6;

  Color get progressBarColorInActive => bGLayerLevel3;

  Color get progressBarColorActive => bGPrimarySolidDefault;

  double get progressBarGutterBar => globalGutterXS1;

  double get progressBarGutterRow => globalGutterS1;

  double get progressBarPaddingTopUnitOn => padding8;

  double get progressBarPaddingTopUnitOff => padding2;

  double get progressBarPaddingBottom => padding2;

  double get loaderSpinSizeS => sizeBox6;

  double get loaderSpinSizeM => sizeBox12;

  Color get loaderColorLoaderPrimary => borderPrimaryDefault;

  Color get loaderColorLoaderSecondary => borderNeutralDefault;

  Color get loaderColorSupporterPrimary => borderPrimaryFaded;

  Color get loaderColorSupporterSecondary => borderNeutralFaded;

  double get loaderBody => 4;

  double get swipeActionPaddingHorizontal => globalPaddingS1;

  double get swipeActionSizeMinWidth => globalSizeL1;

  Color get swipeActionColorBGPrimaryDefault => bGPrimarySolidDefault;

  Color get swipeActionColorBGPrimaryPressed => bGPrimarySolidPressed;

  Color get swipeActionColorBGSuccessDefault => bGSuccessSolidDefault;

  Color get swipeActionColorBGSuccessPressed => bGSuccessSolidPressed;

  Color get swipeActionColorBGWarningDefault => bGWarningSolidDefault;

  Color get swipeActionColorBGWarningPressed => bGWarningSolidPressed;

  Color get swipeActionColorBGDangerDefault => bGDangerSolidDefault;

  Color get swipeActionColorBGDangerPressed => bGDangerSolidPressed;

  Color get swipeActionColorBGNeutralDefault => bGNeutralSolidDefault;

  Color get swipeActionColorBGNeutralPressed => bGNeutralSolidPressed;

  Color get swipeActionColorTextPrimary => textPrimaryonSolidSecondary;

  Color get swipeActionColorTextSuccess => textSuccessonSolidSecondary;

  Color get swipeActionColorTextWarning => textWarningonSolidSecondary;

  Color get swipeActionColorTextDanger => textDangeronSolidSecondary;

  Color get swipeActionColorTextNeutral => textNeutralonSolidSecondary;

  Color get swipeActionColorTextDefault => textNeutralonSolidDefault;

  double get accordionPaddingHorizontal => paddingContainer;

  double get accordionPaddingVertical => globalPaddingS2;

  double get accordionGutterHorizontal => globalGutterS1;

  double get alertStroke => globalStrokeM;

  double get alertRadius => sectionRadius;

  double get alertPaddingVertical => paddingContainer;

  double get alertPaddingHorizontal => paddingContainer;

  Color get alertColorBGNeutral => neutral25;

  Color get alertColorBGInfo => info25;

  Color get alertColorBGWarning => warning25;

  Color get alertColorBGDanger => danger25;

  Color get alertColorBGSuccess => success25;

  Color get alertColorBGPromotion => promotion25;

  Color get alertColorIconNeutral => iconNeutralonFadedLabel;

  Color get alertColorIconInfo => iconInfoonFadedLabel;

  Color get alertColorIconWarning => iconWarningonFadedLabel;

  Color get alertColorIconDanger => iconDangeronFadedLabel;

  Color get alertColorIconSuccess => iconSuccessonFadedLabel;

  Color get alertColorIconPromotion => iconPromotiononFadedLabel;

  Color get alertColorBorderNeutral => borderNeutralFaded;

  Color get alertColorBorderInfo => borderPrimaryFaded;

  Color get alertColorBorderWarning => borderWarningFaded;

  Color get alertColorBorderDanger => borderDangerFaded;

  Color get alertColorBorderSuccess => borderSuccessFaded;

  Color get alertColorBorderPromotion => borderPromotionFaded;

  double get alertGutterVertical => gutterElementVertical;

  Color get avatarColorIconError => iconWarningLabel;

  Color get avatarColorIconNotFound => iconNeutralLabel;

  Color get avatarColorIllustrationBody => primary400;

  Color get avatarColorIllustrationHead => primary200;

  Color get avatarColorBGDefault => bGPrimaryFadedDefault;

  Color get avatarColorBGNotFound => bGNeutralSolidDisabled;

  Color get avatarColorBGError => bGWarningFadedDefault;

  double get avatarSizeXS => globalSizeS4;

  double get avatarSizeS => globalSizeM1;

  double get avatarSizeM => globalSizeM3;

  double get avatarSizeL => globalSizeL1;

  double get avatarSizeXL => globalSizeL2;

  double get bannerGutter => gutterElementHorizontal;

  double get bannerPaddingVertical => globalPaddingS1;

  double get bannerPaddingHorizontal => paddingContainer;

  double get cardRadius => globalRadiusSection;

  double get emptyStatePaddingHorizontal => globalPaddingM2;

  double get emptyStatePaddingVertical => globalPaddingM2;

  double get emptyStatePaddingTop => globalPaddingL3;

  double get emptyStateGutterVerticalElement => gutterBlock;

  double get emptyStateGutterVerticalContent => gutterElementVertical;

  double get gridGutter => globalGutterS1;

  double get gridSizeMinHeight => globalSizeM3;

  double get iconContainerSizeS => globalSizeM1;

  double get iconContainerSizeM => globalSizeM2;

  double get iconContainerSizeL => globalSizeM3;

  double get iconContainerPaddingXS => 0;

  double get iconContainerPaddingS => globalPaddingXS2;

  double get iconContainerPaddingM => globalPaddingS1;

  double get iconContainerPaddingL => globalPaddingS2;

  double get listMinHeightSuffix => globalSizeS4;

  Color get listColorTextObject => textWarningonWhiteTertiary;

  double get listGutterVertical => gutterItemVertical;

  double get listGutterHorizontalLayout => globalGutterS2;

  double get listGutterHorizontalInline => globalGutterXS2;

  double get listPaddingVerticalXSContent => globalPaddingXS2;

  double get listPaddingVerticalXSPrefix => globalPaddingS1;

  double get listPaddingVerticalXSSuffix => globalPaddingXS1;

  double get listPaddingVerticalSContent => globalPaddingS1;

  double get listPaddingVerticalSPrefix => globalPaddingS2H;

  double get listPaddingVerticalSSuffix => globalPaddingXS2;

  double get listPaddingVerticalMContent => globalPaddingS2;

  double get listPaddingVerticalMPrefix => globalPaddingS3H;

  double get listPaddingVerticalMSuffix => globalPaddingXS2;

  double get listPaddingHorizontalContainer => globalPaddingS3;

  double get modalMarginHorizontal => globalMarginM2;

  double get modalPaddingHorizontal => paddingContainer;

  double get modalPaddingVerticalContainerTop => globalPaddingXS3;

  double get modalPaddingVerticalContent => globalPaddingS1;

  double get modalPaddingFooterVerticalBottom => globalPaddingS3;

  double get modalPaddingFooterVerticalTop => globalPaddingS1;

  double get modalRadius => globalRadiusSection;

  double get modalSizeMinHeight => globalSizeL1;

  double get scrollBarWidth => 4;

  double get scrollBarPositionDefaultStart => 0;

  double get scrollBarPositionDefaultEnd => 30;

  Color get scrollBarBGContainer => bGTransparentDefault;

  Color get scrollBarBGBar => bGNeutralSolidDefault;

  double get selectorSizeLinkPageMinHeight => globalSizeS4H;

  double get selectorSizeBarWidth => globalSizeM4;

  double get selectorSizeBarHeight => 3;

  double get selectorSizeBarRadius => globalRadiusMin;

  double get selectorSizeRadius => 2;

  Color get selectorColorBar => bGPrimarySolidDefault;

  double get tagRadius => globalRadiusMin;

  Color get tagColorBorderNeutral => borderNeutralFaded;

  Color get tagColorBorderSuccess => borderSuccessFaded;

  Color get tagColorBorderDanger => borderDangerFaded;

  Color get tagColorBorderWarning => borderWarningFaded;

  Color get tagColorBorderInformation => borderInformationFaded;

  Color get tagColorBorderPromotion => borderPromotionFaded;

  Color get tagColorBGSelected => tagColorBGFadedNeutral;

  Color get tagColorBGPassed => tagColorBGFadedSuccess;

  Color get tagColorBGFalse => tagColorBGFadedDanger;

  Color get tagColorBGPromote => tagColorBGFadedPromotion;

  Color get tagColorBGFadedNeutral => bGNeutralFadedDefault;

  Color get tagColorBGFadedSuccess => bGSuccessFadedDefault;

  Color get tagColorBGFadedDanger => bGDangerFadedDefault;

  Color get tagColorBGFadedWarning => bGWarningFadedDefault;

  Color get tagColorBGFadedInformation => bGInfoFadedDefault;

  Color get tagColorBGFadedPromotion => bGPromotionFadedDefault;

  Color get tagColorBGSolidNeutral => bGNeutralSolidDefault;

  Color get tagColorBGSolidSuccess => bGSuccessSolidDefault;

  Color get tagColorBGSolidDanger => bGDangerSolidDefault;

  Color get tagColorBGSolidWarning => bGWarningSolidDefault;

  Color get tagColorBGSolidInformation => bGInfoSolidDefault;

  Color get tagColorBGSolidPromotion => bGPromotionSolidDefault;

  Color get tagColorTextSolidNeutral => textNeutralonSolidSecondary;

  Color get tagColorTextSolidSuccess => textSuccessonSolidSecondary;

  Color get tagColorTextSolidDanger => textDangeronSolidSecondary;

  Color get tagColorTextSolidWarning => textWarningonSolidSecondary;

  Color get tagColorTextSolidInformation => textInfoonSolidSecondary;

  Color get tagColorTextSolidPromotion => textPromotiononSolidSecondary;

  Color get tagColorTextFadedNeutral => textNeutralonSolidSecondary;

  Color get tagColorTextFadedSuccess => textSuccessonSolidSecondary;

  Color get tagColorTextFadedDanger => textDangeronSolidSecondary;

  Color get tagColorTextFadedWarning => textWarningonSolidSecondary;

  Color get tagColorTextFadedInformation => textInfoonSolidSecondary;

  Color get tagColorTextFadedPromotion => textPromotiononSolidSecondary;

  Color get tagColorTextSelectedDefault => textNeutralBase;

  Color get tagColorTextSelectedSecondary => textNeutralSecondary;

  Color get tagColorTextPassedDefault => textSuccessonWhiteTertiary;

  Color get tagColorTextPassedSecondary => textSuccessonWhiteSecondary;

  Color get tagColorTextFalseDefault => textDangerActionDefault;

  Color get tagColorTextFalseSecondary => textDangeronWhiteSecondary;

  Color get tagColorTextPromotionDefault => textPromotionActionDefault;

  Color get tagColorTextPromotionSecondary => textPromotiononWhiteTertiary;

  double get tagSizeM => globalSizeM1;

  double get tagSizeL => globalSizeM2;

  double get tagSizeGutter => globalGutterXS2;

  double get tagSizeSHeight => globalSizeS4;

  double get tagSizeSPaddingHorizontal => globalPaddingXS2;

  double get tagSizeSPaddingVertical => globalPaddingXS1;

  double get tagSizeMHHeight => globalSizeS4;

  double get tagSizeMHPaddingHorizontal => globalPaddingXS2;

  double get tagSizeMHPaddingVertical => globalPaddingXS2H;

  double get toastGutter => globalGutterS2;

  double get toastPaddingHorizontal => globalPaddingS4;

  double get toastPaddingVertical => globalPaddingS2;

  Color get toastColorIconDefault => iconPrimaryonSolidPrimaryAction;

  Color get toastColorIconInfo => iconInfoonFadedSecondaryAction;

  Color get toastColorIconSuccess => iconSuccessonFadedSecondaryAction;

  Color get toastColorIconWarning => iconWarningonFadedSecondaryAction;

  Color get toastColorIconDanger => iconDangeronFadedSecondaryAction;

  Color get toastColorBGDefault => bGPrimaryStrongestDefault;

  Color get toastColorBGInfo => bGInfoFadedDefault;

  Color get toastColorBGSuccess => bGSuccessFadedDefault;

  Color get toastColorBGWarning => bGWarningFadedDefault;

  Color get toastColorBGDanger => bGDangerFadedDefault;

  Color get toastColorTextSubDefault => textNeutralonSolidTertiary;

  Color get toastColorTextSubInfo => textInfoonFadedSecondary;

  Color get toastColorTextSubSuccess => textSuccessonFadedTertiary;

  Color get toastColorTextSubWarning => textWarningonFadedTertiary;

  Color get toastColorTextSubDanger => textDangeronFadedSecondary;

  Color get toastColorTextTitleDefault => textNeutralonSolidDefault;

  Color get toastColorTextTitleInfo => textInfoonFadedPrimary;

  Color get toastColorTextTitleSuccess => textSuccessonFadedPrimary;

  Color get toastColorTextTitleWarning => textWarningonFadedPrimary;

  Color get toastColorTextTitleDanger => textDangeronFadedPrimary;

  double get tableMarginButtonExitTop => globalMarginS3;

  double get tableMarginButtonExitRight => globalMarginS3;

  double get tableBorderStrokeWidth => globalStrokeM;

  double get tablePaddingVertical => globalPaddingS2;

  double get tablePaddingHorizontal => globalPaddingXS3;

  double get stickerRadius => globalRadiusMin;

  double get stickerSizeM => globalSizeM1;

  double get stickerSizeS => globalSizeS4H;

  double get stickerMarginHorizontal => globalPaddingS1;

  double get stickerPaddingHorizontal => globalPaddingXS2H;

  double get draggableEffectBGBlur => 20;

  Color get keyboardColorBGDefault => bGKeyboardNormalDefault;

  Color get keyboardColorBGSuggestionOTPDefault => bGKeyboardTertiaryDefault;

  double get keyboardSizeDefault => globalSizeM4;

  double get keyboardSizeEmphasized => globalSizeXL1;

  double get keyboardPadding => keyboardGutter;

  double get keyboardRadius => globalRadiusMin;

  double get keyboardGutter => globalGutterS1;

  double get keyboardPaddingBottom => globalPaddingS3;

  double get keyboardTextSize => 24;

  double get keyboardTextLineHeight => 32;

  double get keyboardTextWeight => 500;
}
