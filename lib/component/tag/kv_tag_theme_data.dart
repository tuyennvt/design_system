import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvTagSize {
  small(DTokens.sizeSize16),
  mediumHeavy(18.0),
  medium(DTokens.sizeSize20),
  large(DTokens.sizeSize24);

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
          borderColor = DTokens.colorBorderNeutralFaded;
          break;
        case KvTagStyle.promotion:
          borderColor = DTokens.colorBorderPromotionFaded;
          break;
        case KvTagStyle.information:
          borderColor = DTokens.colorBorderInformationFaded;
          break;
        case KvTagStyle.warning:
          borderColor = DTokens.colorBorderWarningFaded;
          break;
        case KvTagStyle.danger:
          borderColor = DTokens.colorBorderDangerFaded;
          break;
        case KvTagStyle.success:
          borderColor = DTokens.colorBorderSuccessFaded;
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
        return DTokens.colorBgNeutralFadedDefault;
      case KvTagStyle.promotion:
        return DTokens.colorBgPromotionFadedDefault;
      case KvTagStyle.information:
        return DTokens.colorBgInfoFadedDefault;
      case KvTagStyle.warning:
        return DTokens.colorBgWarningFadedDefault;
      case KvTagStyle.danger:
        return DTokens.colorBgDangerFadedDefault;
      case KvTagStyle.success:
        return DTokens.colorBgSuccessFadedDefault;
    }
  }

  Color get backgroundColorSolid {
    switch (style) {
      case KvTagStyle.neutral:
        return DTokens.colorBgNeutralSolidDefault;
      case KvTagStyle.promotion:
        return DTokens.colorBgPromotionSolidDefault;
      case KvTagStyle.information:
        return DTokens.colorBgInfoSolidDefault;
      case KvTagStyle.warning:
        return DTokens.colorBgWarningSolidDefault;
      case KvTagStyle.danger:
        return DTokens.colorBgDangerSolidDefault;
      case KvTagStyle.success:
        return DTokens.colorBgSuccessSolidDefault;
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
        return DTokens.colorTextNeutralSecondary;
      case KvTagType.outline:
        return DTokens.colorTextNeutralSecondary;
      case KvTagType.faded:
        return DTokens.colorTextNeutralOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextNeutralOnsolidSecondary;
    }
  }

  Color get labelColorPromotion {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorTextPromotionOnwhiteSecondary;
      case KvTagType.outline:
        return DTokens.colorTextPromotionOnwhiteSecondary;
      case KvTagType.faded:
        return DTokens.colorTextPromotionOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextPromotionOnsolidSecondary;
    }
  }

  Color get labelColorInformation {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorTextInfoOnwhiteSecondary;
      case KvTagType.outline:
        return DTokens.colorTextInfoOnwhiteSecondary;
      case KvTagType.faded:
        return DTokens.colorTextInfoOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextInfoOnsolidSecondary;
    }
  }

  Color get labelColorWarning {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorTextWarningOnwhiteSecondary;
      case KvTagType.outline:
        return DTokens.colorTextWarningOnwhiteSecondary;
      case KvTagType.faded:
        return DTokens.colorTextWarningOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextWarningOnsolidSecondary;
    }
  }

  Color get labelColorDanger {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorTextDangerOnwhiteSecondary;
      case KvTagType.outline:
        return DTokens.colorTextDangerOnwhiteSecondary;
      case KvTagType.faded:
        return DTokens.colorTextDangerOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextDangerOnsolidSecondary;
    }
  }

  Color get labelColorSuccess {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorTextSuccessOnwhiteSecondary;
      case KvTagType.outline:
        return DTokens.colorTextSuccessOnwhiteSecondary;
      case KvTagType.faded:
        return DTokens.colorTextSuccessOnfadedSecondary;
      case KvTagType.solid:
        return DTokens.colorTextSuccessOnsolidSecondary;
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
        return DTokens.colorIconNeutralLabel;
      case KvTagType.outline:
        return DTokens.colorIconNeutralLabel;
      case KvTagType.faded:
        return DTokens.colorIconNeutralOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconNeutralOnsolidLabel;
    }
  }

  Color get prefixIconColorPromotion {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconPromotionLabel;
      case KvTagType.outline:
        return DTokens.colorIconPromotionLabel;
      case KvTagType.faded:
        return DTokens.colorIconPromotionOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconPromotionOnsolidLabel;
    }
  }

  Color get prefixIconColorInformation {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconInfoLabel;
      case KvTagType.outline:
        return DTokens.colorIconInfoLabel;
      case KvTagType.faded:
        return DTokens.colorIconInfoOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconInfoOnsolidLabel;
    }
  }

  Color get prefixIconColorWarning {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconWarningLabel;
      case KvTagType.outline:
        return DTokens.colorIconWarningLabel;
      case KvTagType.faded:
        return DTokens.colorIconWarningOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconWarningOnsolidLabel;
    }
  }

  Color get prefixIconColorDanger {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconDangerLabel;
      case KvTagType.outline:
        return DTokens.colorIconDangerLabel;
      case KvTagType.faded:
        return DTokens.colorIconDangerOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconDangerOnsolidLabel;
    }
  }

  Color get prefixIconColorSuccess {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconSuccessLabel;
      case KvTagType.outline:
        return DTokens.colorIconSuccessLabel;
      case KvTagType.faded:
        return DTokens.colorIconSuccessOnfadedLabel;
      case KvTagType.solid:
        return DTokens.colorIconSuccessOnsolidLabel;
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
        return DTokens.colorIconNeutralSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconNeutralSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconNeutralOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconNeutralOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorPromotion {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconPromotionSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconPromotionSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconPromotionOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconPromotionOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorInformation {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconInfoSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconInfoSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconInfoOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconInfoOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorWarning {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconWarningSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconWarningSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconWarningOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconWarningOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorDanger {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconDangerSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconDangerSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconDangerOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconDangerOnsolidSecondaryAction;
    }
  }

  Color get suffixIconColorSuccess {
    switch (type) {
      case KvTagType.text:
        return DTokens.colorIconSuccessSecondaryAction;
      case KvTagType.outline:
        return DTokens.colorIconSuccessSecondaryAction;
      case KvTagType.faded:
        return DTokens.colorIconSuccessOnfadedSecondaryAction;
      case KvTagType.solid:
        return DTokens.colorIconSuccessOnsolidSecondaryAction;
    }
  }
}
