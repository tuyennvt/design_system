import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_color.dart';

enum KvIconContainerStyle {
  neutral,
  promotion,
  success,
  danger,
  info,
  warning,
}

class KvIconContainerThemeData {
  KvIconContainerThemeData(this.iconContainerStyle);

  final KvIconContainerStyle iconContainerStyle;

  Color get iconColor {
    switch (iconContainerStyle) {
      case KvIconContainerStyle.neutral:
        return DTokens.colorIconNeutralLabel;
      case KvIconContainerStyle.promotion:
        return DTokens.colorIconPromotionOnfadedLabel;
      case KvIconContainerStyle.success:
        return DTokens.colorIconSuccessOnfadedLabel;
      case KvIconContainerStyle.danger:
        return DTokens.colorIconDangerOnfadedLabel;
      case KvIconContainerStyle.info:
        return DTokens.colorIconInfoOnfadedLabel;
      case KvIconContainerStyle.warning:
        return DTokens.colorIconWarningOnfadedLabel;
    }
  }

  Color get backgroundColor {
    switch (iconContainerStyle) {
      case KvIconContainerStyle.neutral:
        return DTokens.colorBgNeutralFadedDefault;
      case KvIconContainerStyle.promotion:
        return DTokens.colorBgPromotionFadedDefault;
      case KvIconContainerStyle.success:
        return DTokens.colorBgSuccessFadedDefault;
      case KvIconContainerStyle.danger:
        return DTokens.colorBgDangerFadedDefault;
      case KvIconContainerStyle.info:
        return DTokens.colorBgInfoFadedDefault;
      case KvIconContainerStyle.warning:
        return DTokens.colorBgWarningFadedDefault;
    }
  }
}
