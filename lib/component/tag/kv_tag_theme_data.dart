import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvTagSize {
  small(KvDesignSystem().sizeSize16),
  mediumHeavy(18.0),
  medium(KvDesignSystem().sizeSize20),
  large(KvDesignSystem().sizeSize24);

  const KvTagSize(this.value);

  final double value;
}

enum KvTagStyle {
  neutral,
  promotion,
  information,
  warning,
  danger,
  success,
}

enum KvTagType {
  text,
  outline,
  faded,
  solid,
}

class KvTagThemeData {
  const KvTagThemeData({
    required this.size,
    required this.style,
    required this.type,
  });

  final KvTagSize size;
  final KvTagStyle style;
  final KvTagType type;

  Border? get border {
    if (type == KvTagType.outline) {
      Color borderColor;
      switch (style) {
        case KvTagStyle.neutral:
          borderColor = KvDesignSystem().colorBorderNeutralFaded;
          break;
        case KvTagStyle.promotion:
          borderColor = KvDesignSystem().colorBorderPromotionFaded;
          break;
        case KvTagStyle.information:
          borderColor = KvDesignSystem().colorBorderInformationFaded;
          break;
        case KvTagStyle.warning:
          borderColor = KvDesignSystem().colorBorderWarningFaded;
          break;
        case KvTagStyle.danger:
          borderColor = KvDesignSystem().colorBorderDangerFaded;
          break;
        case KvTagStyle.success:
          borderColor = KvDesignSystem().colorBorderSuccessFaded;
          break;
      }
      return Border.all(color: borderColor);
    }
    return null;
  }

  Color get backgroundColor {
    switch (type) {
      case KvTagType.text:
      case KvTagType.outline:
        return Colors.transparent;
      case KvTagType.faded:
        return backgroundColorFaded;
      case KvTagType.solid:
        return backgroundColorSolid;
    }
  }

  Color get backgroundColorFaded {
    switch (style) {
      case KvTagStyle.neutral:
        return KvDesignSystem().colorBgNeutralFadedDefault;
      case KvTagStyle.promotion:
        return KvDesignSystem().colorBgPromotionFadedDefault;
      case KvTagStyle.information:
        return KvDesignSystem().colorBgInfoFadedDefault;
      case KvTagStyle.warning:
        return KvDesignSystem().colorBgWarningFadedDefault;
      case KvTagStyle.danger:
        return KvDesignSystem().colorBgDangerFadedDefault;
      case KvTagStyle.success:
        return KvDesignSystem().colorBgSuccessFadedDefault;
    }
  }

  Color get backgroundColorSolid {
    switch (style) {
      case KvTagStyle.neutral:
        return KvDesignSystem().colorBgNeutralSolidDefault;
      case KvTagStyle.promotion:
        return KvDesignSystem().colorBgPromotionSolidDefault;
      case KvTagStyle.information:
        return KvDesignSystem().colorBgInfoSolidDefault;
      case KvTagStyle.warning:
        return KvDesignSystem().colorBgWarningSolidDefault;
      case KvTagStyle.danger:
        return KvDesignSystem().colorBgDangerSolidDefault;
      case KvTagStyle.success:
        return KvDesignSystem().colorBgSuccessSolidDefault;
    }
  }

  TextStyle get labelStyle {
    switch (size) {
      case KvTagSize.small:
        return KvTextStyles.labelXS(color: labelColor);
      case KvTagSize.mediumHeavy:
        return KvTextStyles.labelXS(color: labelColor);
      case KvTagSize.medium:
        return KvTextStyles.labelS(color: labelColor);
      case KvTagSize.large:
        return KvTextStyles.labelM(color: labelColor);
    }
  }

  Color get labelColor {
    switch (style) {
      case KvTagStyle.neutral:
        return labelColorNeutral;
      case KvTagStyle.promotion:
        return labelColorPromotion;
      case KvTagStyle.information:
        return labelColorInformation;
      case KvTagStyle.warning:
        return labelColorWarning;
      case KvTagStyle.danger:
        return labelColorDanger;
      case KvTagStyle.success:
        return labelColorSuccess;
    }
  }

  Color get labelColorNeutral {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextNeutralSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextNeutralSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextNeutralOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextNeutralOnsolidSecondary;
    }
  }

  Color get labelColorPromotion {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextPromotionOnwhiteSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextPromotionOnwhiteSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextPromotionOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextPromotionOnsolidSecondary;
    }
  }

  Color get labelColorInformation {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextInfoOnwhiteSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextInfoOnwhiteSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextInfoOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextInfoOnsolidSecondary;
    }
  }

  Color get labelColorWarning {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextWarningOnwhiteSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextWarningOnwhiteSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextWarningOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextWarningOnsolidSecondary;
    }
  }

  Color get labelColorDanger {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextDangerOnwhiteSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextDangerOnwhiteSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextDangerOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextDangerOnsolidSecondary;
    }
  }

  Color get labelColorSuccess {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorTextSuccessOnwhiteSecondary;
      case KvTagType.outline:
        return KvDesignSystem().colorTextSuccessOnwhiteSecondary;
      case KvTagType.faded:
        return KvDesignSystem().colorTextSuccessOnfadedSecondary;
      case KvTagType.solid:
        return KvDesignSystem().colorTextSuccessOnsolidSecondary;
    }
  }

  EdgeInsets get padding {
    return const EdgeInsets.symmetric(horizontal: 4);
  }

  BorderRadius get borderRadius {
    return const BorderRadius.all(Radius.circular(4));
  }

  KvIconSize get prefixIconSize {
    switch (size) {
      case KvTagSize.small:
        return KvIconSize.size12;
      case KvTagSize.mediumHeavy:
        return KvIconSize.size12;
      case KvTagSize.medium:
        return KvIconSize.size16;
      case KvTagSize.large:
        return KvIconSize.size20;
    }
  }

  KvIconSize get suffixIconSize {
    return KvIconSize.size12;
  }

  double get gutter {
    return 4.0;
  }

  Color get prefixIconColor {
    switch (style) {
      case KvTagStyle.neutral:
        return prefixIconColorNeutral;
      case KvTagStyle.promotion:
        return prefixIconColorPromotion;
      case KvTagStyle.information:
        return prefixIconColorInformation;
      case KvTagStyle.warning:
        return prefixIconColorWarning;
      case KvTagStyle.danger:
        return prefixIconColorDanger;
      case KvTagStyle.success:
        return prefixIconColorSuccess;
    }
  }

  Color get prefixIconColorNeutral {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconNeutralLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconNeutralLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconNeutralOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconNeutralOnsolidLabel;
    }
  }

  Color get prefixIconColorPromotion {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconPromotionLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconPromotionLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconPromotionOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconPromotionOnsolidLabel;
    }
  }

  Color get prefixIconColorInformation {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconInfoLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconInfoLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconInfoOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconInfoOnsolidLabel;
    }
  }

  Color get prefixIconColorWarning {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconWarningLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconWarningLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconWarningOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconWarningOnsolidLabel;
    }
  }

  Color get prefixIconColorDanger {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconDangerLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconDangerLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconDangerOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconDangerOnsolidLabel;
    }
  }

  Color get prefixIconColorSuccess {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconSuccessLabel;
      case KvTagType.outline:
        return KvDesignSystem().colorIconSuccessLabel;
      case KvTagType.faded:
        return KvDesignSystem().colorIconSuccessOnfadedLabel;
      case KvTagType.solid:
        return KvDesignSystem().colorIconSuccessOnsolidLabel;
    }
  }

  Color get suffixIconColor {
    switch (style) {
      case KvTagStyle.neutral:
        return suffixIconColorNeutral;
      case KvTagStyle.promotion:
        return suffixIconColorPromotion;
      case KvTagStyle.information:
        return suffixIconColorInformation;
      case KvTagStyle.warning:
        return suffixIconColorWarning;
      case KvTagStyle.danger:
        return suffixIconColorDanger;
      case KvTagStyle.success:
        return suffixIconColorSuccess;
    }
  }

  Color get suffixIconColorNeutral {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconNeutralSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconNeutralSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconNeutralOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconNeutralOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorPromotion {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconPromotionSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconPromotionSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconPromotionOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconPromotionOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorInformation {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconInfoSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconInfoSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconInfoOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconInfoOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorWarning {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconWarningSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconWarningSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconWarningOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconWarningOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorDanger {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconDangerSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconDangerSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconDangerOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconDangerOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorSuccess {
    switch (type) {
      case KvTagType.text:
        return KvDesignSystem().colorIconSuccessSecondaryAction;
      case KvTagType.outline:
        return KvDesignSystem().colorIconSuccessSecondaryAction;
      case KvTagType.faded:
        return KvDesignSystem().colorIconSuccessOnfadedSecondaryAction;
      case KvTagType.solid:
        return KvDesignSystem().colorIconSuccessOnsolidSecondaryAction;
    }
  }
}
