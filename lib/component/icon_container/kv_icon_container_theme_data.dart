import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

enum KvIconContainerStyle {
  neutral,
  promotion,
  success,
  danger,
  info,
  warning,
}

enum KvIconContainerSize {
  small,
  medium,
  large,
}

class KvIconContainerThemeData {
  KvIconContainerThemeData(this.style, this.size);

  final KvIconContainerStyle style;
  final KvIconContainerSize size;

  Color get iconColor {
    switch (style) {
      case KvIconContainerStyle.neutral:
        return KvDesignSystem().iconNeutralLabel;
      case KvIconContainerStyle.promotion:
        return KvDesignSystem().iconPromotiononFadedLabel;
      case KvIconContainerStyle.success:
        return KvDesignSystem().iconSuccessonFadedLabel;
      case KvIconContainerStyle.danger:
        return KvDesignSystem().iconDangeronFadedLabel;
      case KvIconContainerStyle.info:
        return KvDesignSystem().iconInfoonFadedLabel;
      case KvIconContainerStyle.warning:
        return KvDesignSystem().iconWarningonFadedLabel;
    }
  }

  Color get backgroundColor {
    switch (style) {
      case KvIconContainerStyle.neutral:
        return KvDesignSystem().bGNeutralFadedDefault;
      case KvIconContainerStyle.promotion:
        return KvDesignSystem().bGPromotionFadedDefault;
      case KvIconContainerStyle.success:
        return KvDesignSystem().bGSuccessFadedDefault;
      case KvIconContainerStyle.danger:
        return KvDesignSystem().bGDangerFadedDefault;
      case KvIconContainerStyle.info:
        return KvDesignSystem().bGInfoFadedDefault;
      case KvIconContainerStyle.warning:
        return KvDesignSystem().bGWarningFadedDefault;
    }
  }

  BoxConstraints get boxConstraints {
    var numberSize = 0.0;
    switch (size) {
      case KvIconContainerSize.small:
        numberSize = KvDesignSystem().iconContainerSizeS;
        break;
      case KvIconContainerSize.medium:
        numberSize = KvDesignSystem().iconContainerSizeM;
        break;
      case KvIconContainerSize.large:
        numberSize = KvDesignSystem().iconContainerSizeL;
        break;
    }
    return BoxConstraints.tight(Size.square(numberSize));
  }
}
