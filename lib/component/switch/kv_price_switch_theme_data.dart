import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvPriceSwitchStyle {
  defaultStyle,
  primaryStyle,
}

class KvPriceSwitchThemeData {
  const KvPriceSwitchThemeData({
    required this.size,
    required this.style,
  });

  final KvPriceSwitchSize size;
  final KvPriceSwitchStyle style;

  Color get background {
    return DTokens.colorBgNeutralFadedDefault;
  }

  Color get knobColor {
    switch (style) {
      case KvPriceSwitchStyle.defaultStyle:
        return DTokens.colorBgLayerLevel0;
      case KvPriceSwitchStyle.primaryStyle:
        return DTokens.colorBgPrimarySolidDefault;
    }
  }

  BorderRadius get borderRadius {
    return const BorderRadius.all(Radius.circular(8.0));
  }

  BorderRadius get knobBorderRadius {
    return const BorderRadius.all(Radius.circular(6.0));
  }

  Color get knobTextColor {
    switch (style) {
      case KvPriceSwitchStyle.defaultStyle:
        return DTokens.colorTextPrimaryDefault;
      case KvPriceSwitchStyle.primaryStyle:
        return DTokens.colorTextNeutralOnsolidDefault;
    }
  }

  TextStyle get textStyle {
    switch (size) {
      case KvPriceSwitchSize.small:
        return KvTextStyles.titleS(
            color: DTokens.colorTextNeutralDefault,);
      case KvPriceSwitchSize.medium:
        return KvTextStyles.titleM(
            color: DTokens.colorTextNeutralDefault,);
    }
  }
}
