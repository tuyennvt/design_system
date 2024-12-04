import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../kv_design_system.dart';

enum KvTagSize {
  small,
  medium,
  large;
}

enum KvTagVariant {
  neutral,
  promotion,
  information,
  warning,
  danger,
  success,
}

enum KvTagStyle {
  text,
  outline,
  faded,
  solid,
}

class KvTagThemeData {
  const KvTagThemeData({
    required this.size,
    required this.variant,
    required this.style,
  });

  final KvTagSize size;
  final KvTagVariant variant;
  final KvTagStyle style;

  Border? get border {
    if (style == KvTagStyle.outline) {
      Color borderColor;
      switch (variant) {
        case KvTagVariant.neutral:
          borderColor = KvDesignSystem().borderNeutralFaded;
          break;
        case KvTagVariant.promotion:
          borderColor = KvDesignSystem().borderPromotionFaded;
          break;
        case KvTagVariant.information:
          borderColor = KvDesignSystem().borderInformationFaded;
          break;
        case KvTagVariant.warning:
          borderColor = KvDesignSystem().borderWarningFaded;
          break;
        case KvTagVariant.danger:
          borderColor = KvDesignSystem().borderDangerFaded;
          break;
        case KvTagVariant.success:
          borderColor = KvDesignSystem().borderSuccessFaded;
          break;
      }
      return Border.all(color: borderColor);
    }
    return null;
  }

  Color get backgroundColor {
    switch (style) {
      case KvTagStyle.text:
      case KvTagStyle.outline:
        return Colors.transparent;
      case KvTagStyle.faded:
        return backgroundColorFaded;
      case KvTagStyle.solid:
        return backgroundColorSolid;
    }
  }

  Color get backgroundColorFaded {
    switch (variant) {
      case KvTagVariant.neutral:
        return KvDesignSystem().bGNeutralFadedDefault;
      case KvTagVariant.promotion:
        return KvDesignSystem().bGPromotionFadedDefault;
      case KvTagVariant.information:
        return KvDesignSystem().bGInfoFadedDefault;
      case KvTagVariant.warning:
        return KvDesignSystem().bGWarningFadedDefault;
      case KvTagVariant.danger:
        return KvDesignSystem().bGDangerFadedDefault;
      case KvTagVariant.success:
        return KvDesignSystem().bGSuccessFadedDefault;
    }
  }

  Color get backgroundColorSolid {
    switch (variant) {
      case KvTagVariant.neutral:
        return KvDesignSystem().bGNeutralSolidDefault;
      case KvTagVariant.promotion:
        return KvDesignSystem().bGPromotionSolidDefault;
      case KvTagVariant.information:
        return KvDesignSystem().bGInfoSolidDefault;
      case KvTagVariant.warning:
        return KvDesignSystem().bGWarningSolidDefault;
      case KvTagVariant.danger:
        return KvDesignSystem().bGDangerSolidDefault;
      case KvTagVariant.success:
        return KvDesignSystem().bGSuccessSolidDefault;
    }
  }

  TextStyle get labelStyle {
    switch (size) {
      case KvTagSize.small:
        return KvTextStyles.labelXS(color: labelColor);
      case KvTagSize.medium:
        return KvTextStyles.labelS(color: labelColor);
      case KvTagSize.large:
        return KvTextStyles.labelM(color: labelColor);
    }
  }

  Color get labelColor {
    switch (variant) {
      case KvTagVariant.neutral:
        return labelColorNeutral;
      case KvTagVariant.promotion:
        return labelColorPromotion;
      case KvTagVariant.information:
        return labelColorInformation;
      case KvTagVariant.warning:
        return labelColorWarning;
      case KvTagVariant.danger:
        return labelColorDanger;
      case KvTagVariant.success:
        return labelColorSuccess;
    }
  }

  Color get labelColorNeutral {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textNeutralSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textNeutralSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textNeutralonFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textNeutralonSolidSecondary;
    }
  }

  Color get labelColorPromotion {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textPromotiononWhiteSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textPromotiononWhiteSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textPromotiononFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textPromotiononSolidSecondary;
    }
  }

  Color get labelColorInformation {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textInfoonWhiteSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textInfoonWhiteSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textInfoonFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textInfoonSolidSecondary;
    }
  }

  Color get labelColorWarning {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textWarningonWhiteSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textWarningonWhiteSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textWarningonFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textWarningonSolidSecondary;
    }
  }

  Color get labelColorDanger {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textDangeronWhiteSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textDangeronWhiteSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textDangeronFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textDangeronSolidSecondary;
    }
  }

  Color get labelColorSuccess {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().textSuccessonWhiteSecondary;
      case KvTagStyle.outline:
        return KvDesignSystem().textSuccessonWhiteSecondary;
      case KvTagStyle.faded:
        return KvDesignSystem().textSuccessonFadedSecondary;
      case KvTagStyle.solid:
        return KvDesignSystem().textSuccessonSolidSecondary;
    }
  }

  EdgeInsets get padding {
    var horizontal = 0.0;
    var vertical = 0.0;
    switch (size) {
      case KvTagSize.small:
        horizontal = KvDesignSystem().tagSizeSPaddingHorizontal;
        vertical = KvDesignSystem().tagSizeSPaddingVertical;
        break;
      case KvTagSize.medium:
        horizontal = 6;
        vertical = 2;
        break;
      case KvTagSize.large:
        horizontal = 6;
        vertical = 2;
        break;
    }
    return EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);
  }

  BorderRadius get borderRadius {
    return BorderRadius.circular(KvDesignSystem().tagRadius);
  }

  KvIconSize get prefixIconSize {
    switch (size) {
      case KvTagSize.small:
        return KvIconSize.iconXXS;
      case KvTagSize.medium:
        return KvIconSize.iconXXS;
      case KvTagSize.large:
        return KvIconSize.iconXS;
    }
  }

  KvIconSize get suffixIconSize {
    switch (size) {
      case KvTagSize.small:
        return KvIconSize.iconXXS;
      case KvTagSize.medium:
        return KvIconSize.iconXXS;
      case KvTagSize.large:
        return KvIconSize.iconXS;
    }
  }

  double get gutter => KvDesignSystem().tagSizeGutter;

  Color get prefixIconColor {
    switch (variant) {
      case KvTagVariant.neutral:
        return prefixIconColorNeutral;
      case KvTagVariant.promotion:
        return prefixIconColorPromotion;
      case KvTagVariant.information:
        return prefixIconColorInformation;
      case KvTagVariant.warning:
        return prefixIconColorWarning;
      case KvTagVariant.danger:
        return prefixIconColorDanger;
      case KvTagVariant.success:
        return prefixIconColorSuccess;
    }
  }

  Color get prefixIconColorNeutral {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconNeutralLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconNeutralLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconNeutralonFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconNeutralonSolidLabel;
    }
  }

  Color get prefixIconColorPromotion {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconPromotionLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconPromotionLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconPromotiononFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconPromotiononSolidLabel;
    }
  }

  Color get prefixIconColorInformation {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconInfoLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconInfoLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconInfoonFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconInfoonSolidLabel;
    }
  }

  Color get prefixIconColorWarning {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconWarningLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconWarningLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconWarningonFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconWarningonSolidLabel;
    }
  }

  Color get prefixIconColorDanger {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconDangerLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconDangerLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconDangeronFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconDangeronSolidLabel;
    }
  }

  Color get prefixIconColorSuccess {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconSuccessLabel;
      case KvTagStyle.outline:
        return KvDesignSystem().iconSuccessLabel;
      case KvTagStyle.faded:
        return KvDesignSystem().iconSuccessonFadedLabel;
      case KvTagStyle.solid:
        return KvDesignSystem().iconSuccessonSolidLabel;
    }
  }

  Color get suffixIconColor {
    switch (variant) {
      case KvTagVariant.neutral:
        return suffixIconColorNeutral;
      case KvTagVariant.promotion:
        return suffixIconColorPromotion;
      case KvTagVariant.information:
        return suffixIconColorInformation;
      case KvTagVariant.warning:
        return suffixIconColorWarning;
      case KvTagVariant.danger:
        return suffixIconColorDanger;
      case KvTagVariant.success:
        return suffixIconColorSuccess;
    }
  }

  Color get suffixIconColorNeutral {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconNeutralSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconNeutralSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconNeutralonFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconNeutralonSolidSecondaryAction;
    }
  }

  Color get suffixIconColorPromotion {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconPromotionSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconPromotionSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconPromotiononFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconPromotiononSolidSecondaryAction;
    }
  }

  Color get suffixIconColorInformation {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconInfoSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconInfoSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconInfoonFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconInfoonSolidSecondaryAction;
    }
  }

  Color get suffixIconColorWarning {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconWarningSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconWarningSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconWarningonFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconWarningonSolidSecondaryAction;
    }
  }

  Color get suffixIconColorDanger {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconDangerSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconDangerSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconDangeronFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconDangeronSolidSecondaryAction;
    }
  }

  Color get suffixIconColorSuccess {
    switch (style) {
      case KvTagStyle.text:
        return KvDesignSystem().iconSuccessSecondaryAction;
      case KvTagStyle.outline:
        return KvDesignSystem().iconSuccessSecondaryAction;
      case KvTagStyle.faded:
        return KvDesignSystem().iconSuccessonFadedSecondaryAction;
      case KvTagStyle.solid:
        return KvDesignSystem().iconSuccessonSolidSecondaryAction;
    }
  }
}
