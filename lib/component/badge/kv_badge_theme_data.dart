import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../kv_design_system.dart';

enum KvBadgeSize {
  small,
  medium,
  large,
  xLarge,
}

enum KvBadgeType {
  defaultBadge,
  maxBadge,
}

enum KvBadgeStyle {
  solid,
  outline,
  onBackground,
}

enum KvBadgeVariant {
  primary,
  neutral,
  success,
  danger,
  warning,
}

class KvBadgeThemeData {
  const KvBadgeThemeData({
    required this.type,
    required this.size,
    required this.variant,
    required this.style,
    required this.enable,
  });

  final KvBadgeType type;
  final KvBadgeSize size;
  final KvBadgeVariant variant;
  final KvBadgeStyle style;
  final bool enable;

  BoxShape get shape {
    if (type == KvBadgeType.maxBadge) {
      return BoxShape.rectangle;
    }
    return BoxShape.circle;
  }

  BorderRadius? get borderRadius {
    if (type == KvBadgeType.maxBadge) {
      return BorderRadius.circular(KvDesignSystem().badgeRadius);
    }
    return null;
  }

  Border? get border {
    if (style == KvBadgeStyle.outline) {
      return Border.all(
        color: borderColor,
        width: KvDesignSystem().badgeStroke,
      );
    }
    return null;
  }

  Color get borderColor {
    switch (variant) {
      case KvBadgeVariant.primary:
        if (enable) {
          return KvDesignSystem().badgeColorBorderPrimaryDefault;
        }
        return KvDesignSystem().badgeColorBorderPrimaryDisabled;
      case KvBadgeVariant.neutral:
        if (enable) {
          return KvDesignSystem().badgeColorBorderNeutralDefault;
        }
        return KvDesignSystem().badgeColorBorderNeutralDisabled;
      case KvBadgeVariant.success:
        if (enable) {
          return KvDesignSystem().badgeColorBorderSuccessDefault;
        }
        return KvDesignSystem().badgeColorBorderSuccessDisabled;
      case KvBadgeVariant.danger:
        if (enable) {
          return KvDesignSystem().badgeColorBorderDangerDefault;
        }
        return KvDesignSystem().badgeColorBorderDangerDisabled;
      case KvBadgeVariant.warning:
        if (enable) {
          return KvDesignSystem().badgeColorBorderWarningDefault;
        }
        return KvDesignSystem().badgeColorBorderWarningDisabled;
    }
  }

  Color get backgroundColor {
    switch (variant) {
      case KvBadgeVariant.primary:
        return primaryBackgroundColor;
      case KvBadgeVariant.neutral:
        return neutralBackgroundColor;
      case KvBadgeVariant.success:
        return successBackgroundColor;
      case KvBadgeVariant.danger:
        return dangerBackgroundColor;
      case KvBadgeVariant.warning:
        return warningBackgroundColor;
    }
  }

  Color get primaryBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGPrimarySolidDefault;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGPrimaryonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGPrimarySolidDisabled;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGPrimaryonSolidDisabled;
      }
    }
  }

  Color get neutralBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGNeutralSolidDefault;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGNeutralonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGNeutralSolidDisabled;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGNeutralonSolidDisabled;
      }
    }
  }

  Color get successBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGSuccessSolidDefault;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGSuccessonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGSuccessSolidDisabled;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGSuccessonSolidDisabled;
      }
    }
  }

  Color get dangerBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGDangerSolidDefault;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGDangeronSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGDangerSolidDisabled;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGDangeronSolidDisabled;
      }
    }
  }

  Color get warningBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGWarningSolidDefault;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGWarningonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return KvDesignSystem().badgeColorBGWarningSolidDisabled;
        case KvBadgeStyle.outline:
          return KvDesignSystem().colorTransparent;
        case KvBadgeStyle.onBackground:
          return KvDesignSystem().badgeColorBGWarningonSolidDisabled;
      }
    }
  }

  EdgeInsets get padding {
    switch (size) {
      case KvBadgeSize.small:
        return EdgeInsets.symmetric(
          horizontal: KvDesignSystem().badgeSizeSPaddingHorizontal,
        );
      case KvBadgeSize.medium:
        return EdgeInsets.symmetric(
          horizontal: KvDesignSystem().badgeSizeMPaddingHorizontal,
        );
      case KvBadgeSize.large:
        return EdgeInsets.symmetric(
          horizontal: KvDesignSystem().badgeSizeLPaddingHorizontal,
        );
      case KvBadgeSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: KvDesignSystem().badgeSizeXLPaddingHorizontal,
        );
    }
  }

  TextStyle get textStyle {
    switch (size) {
      case KvBadgeSize.small:
        return KvTextStyles.labelXS(color: textColor);
      case KvBadgeSize.medium:
        return KvTextStyles.labelS(color: textColor);
      case KvBadgeSize.large:
        return KvTextStyles.labelM(color: textColor);
      case KvBadgeSize.xLarge:
        return KvTextStyles.labelL(color: textColor);
    }
  }

  Color get textColor {
    switch (variant) {
      case KvBadgeVariant.primary:
        return primaryTextColor;
      case KvBadgeVariant.neutral:
        return neutralTextColor;
      case KvBadgeVariant.success:
        return successTextColor;
      case KvBadgeVariant.danger:
        return dangerTextColor;
      case KvBadgeVariant.warning:
        return warningTextColor;
    }
  }

  Color get primaryTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return KvDesignSystem().badgeColorTextPrimarySolidDefault;
        }
        return KvDesignSystem().badgeColorTextPrimarySolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return KvDesignSystem().badgeColorTextPrimaryOutlineDefault;
        }
        return KvDesignSystem().badgeColorTextPrimaryOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return KvDesignSystem().badgeColorTextPrimaryonSolidDefault;
        }
        return KvDesignSystem().badgeColorTextPrimaryonSolidDisabled;
    }
  }

  Color get neutralTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return KvDesignSystem().badgeColorTextNeutralSolidDefault;
        }
        return KvDesignSystem().badgeColorTextNeutralSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return KvDesignSystem().badgeColorTextNeutralOutlineDefault;
        }
        return KvDesignSystem().badgeColorTextNeutralOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return KvDesignSystem().badgeColorTextNeutralonSolidDefault;
        }
        return KvDesignSystem().badgeColorTextNeutralonSolidDisabled;
    }
  }

  Color get successTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return KvDesignSystem().badgeColorTextSuccessSolidDefault;
        }
        return KvDesignSystem().badgeColorTextSuccessSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return KvDesignSystem().badgeColorTextSuccessOutlineDefault;
        }
        return KvDesignSystem().badgeColorTextSuccessOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return KvDesignSystem().badgeColorTextSuccessonSolidDefault;
        }
        return KvDesignSystem().badgeColorTextSuccessonSolidDisabled;
    }
  }

  Color get dangerTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return KvDesignSystem().badgeColorTextDangerSolidDefault;
        }
        return KvDesignSystem().badgeColorTextDangerSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return KvDesignSystem().badgeColorTextDangerOutlineDefault;
        }
        return KvDesignSystem().badgeColorTextDangerOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return KvDesignSystem().badgeColorTextDangeronSolidDefault;
        }
        return KvDesignSystem().badgeColorTextDangeronSolidDisabled;
    }
  }

  Color get warningTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return KvDesignSystem().badgeColorTextWarningSolidDefault;
        }
        return KvDesignSystem().badgeColorTextWarningSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return KvDesignSystem().badgeColorTextWarningOutlineDefault;
        }
        return KvDesignSystem().badgeColorTextWarningOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return KvDesignSystem().badgeColorTextWarningonSolidDefault;
        }
        return KvDesignSystem().badgeColorTextWarningonSolidDisabled;
    }
  }

  BoxConstraints get constraints {
    var minWidth = 0.0;
    var height = 0.0;
    switch (size) {
      case KvBadgeSize.small:
        minWidth = KvDesignSystem().badgeSizeSMinWidth;
        height = KvDesignSystem().badgeSizeSHeight;
        break;
      case KvBadgeSize.medium:
        minWidth = KvDesignSystem().badgeSizeMMinWidth;
        height = KvDesignSystem().badgeSizeMHeight;
        break;
      case KvBadgeSize.large:
        minWidth = KvDesignSystem().badgeSizeLMinWidth;
        height = KvDesignSystem().badgeSizeMHeight;
        break;
      case KvBadgeSize.xLarge:
        minWidth = KvDesignSystem().badgeSizeXLMinWidth;
        height = KvDesignSystem().badgeSizeXLHeight;
        break;
    }
    return BoxConstraints(
      minWidth: minWidth,
      minHeight: height,
      maxHeight: height,
    );
  }
}
