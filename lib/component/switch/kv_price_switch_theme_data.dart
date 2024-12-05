import 'package:flutter/material.dart';

import '../../foundation/kv_text_styles.dart';
import '../../kv_design_system.dart';

enum KvPriceSwitchSize {
  small,
  medium,
}

enum KvPriceSwitchStyle {
  defaultStyle,
  primaryStyle,
}

class KvPriceSwitchThemeData {
  const KvPriceSwitchThemeData({
    required this.size,
    required this.style,
    required this.enable,
  });

  final KvPriceSwitchSize size;
  final KvPriceSwitchStyle style;
  final bool enable;

  Color get background {
    return KvDesignSystem().bGNeutralFadedDefault;
  }

  Color get knobColor {
    switch (style) {
      case KvPriceSwitchStyle.defaultStyle:
        return KvDesignSystem().bGLayerLevel0;
      case KvPriceSwitchStyle.primaryStyle:
        return KvDesignSystem().bGPrimarySolidDefault;
    }
  }

  BorderRadius get borderRadius {
    return BorderRadius.all(
      Radius.circular(KvDesignSystem().toggleRadiusPriceTagContainer),
    );
  }

  BorderRadius get knobBorderRadius {
    return const BorderRadius.all(Radius.circular(8.0));
  }

  Color get knobTextColor {
    if (enable) {
      switch (style) {
        case KvPriceSwitchStyle.defaultStyle:
          return KvDesignSystem().textPrimaryActionDefault;
        case KvPriceSwitchStyle.primaryStyle:
          return KvDesignSystem().textNeutralonSolidDefault;
      }
    } else {
      switch (style) {
        case KvPriceSwitchStyle.defaultStyle:
          return KvDesignSystem().textPrimaryonWhiteDisabled;
        case KvPriceSwitchStyle.primaryStyle:
          return KvDesignSystem().textNeutralonSolidDefault;
      }
    }
  }

  TextStyle get textStyle {
    switch (size) {
      case KvPriceSwitchSize.small:
        return KvTextStyles.titleS(color: KvDesignSystem().textNeutralDefault);
      case KvPriceSwitchSize.medium:
        return KvTextStyles.titleM(color: KvDesignSystem().textNeutralDefault);
    }
  }

  double get height {
    switch (size) {
      case KvPriceSwitchSize.small:
        return 28;
      case KvPriceSwitchSize.medium:
        return 36;
    }
  }

  double get width {
    return 92;
  }

  EdgeInsets get padding {
    return const EdgeInsets.all(2);
  }

  double get widthKnob {
    return 44;
  }

  double get heightKnob {
    switch (size) {
      case KvPriceSwitchSize.small:
        return 24.0;
      case KvPriceSwitchSize.medium:
        return 32.0;
    }
  }
}
