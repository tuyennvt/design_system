import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/d_tokens.dart';

enum KvBadgeSize {
  small(DTokens.badgeSizeSMinWidth, DTokens.badgeSizeSHeight),
  medium(DTokens.badgeSizeMMinWidth, DTokens.badgeSizeMHeight),
  large(DTokens.badgeSizeLMinWidth, DTokens.badgeSizeLHeight),
  xLarge(DTokens.badgeSizeXLMinWidth, DTokens.badgeSizeXLHeight);

  const KvBadgeSize(this.minWidth, this.height);

  final int minWidth;
  final int height;
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
      return BorderRadius.circular(DTokens.badgeRadius.toDouble());
    }
    return null;
  }

  Border? get border {
    if (style == KvBadgeStyle.outline) {
      return Border.all(
        color: borderColor,
        width: DTokens.badgeStroke.toDouble(),
      );
    }
    return null;
  }

  Color get borderColor {
    switch (variant) {
      case KvBadgeVariant.primary:
        if (enable) {
          return DTokens.badgeColorBorderPrimaryDefault;
        }
        return DTokens.badgeColorBorderPrimaryDisabled;
      case KvBadgeVariant.neutral:
        if (enable) {
          return DTokens.badgeColorBorderNeutralDefault;
        }
        return DTokens.badgeColorBorderNeutralDisabled;
      case KvBadgeVariant.success:
        if (enable) {
          return DTokens.badgeColorBorderSuccessDefault;
        }
        return DTokens.badgeColorBorderSuccessDisabled;
      case KvBadgeVariant.danger:
        if (enable) {
          return DTokens.badgeColorBorderDangerDefault;
        }
        return DTokens.badgeColorBorderDangerDisabled;
      case KvBadgeVariant.warning:
        if (enable) {
          return DTokens.badgeColorBorderWarningDefault;
        }
        return DTokens.badgeColorBorderWarningDisabled;
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
          return DTokens.badgeColorBGPrimarySolidDefault;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGPrimaryonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGPrimarySolidDisabled;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGPrimaryonSolidDisabled;
      }
    }
  }

  Color get neutralBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGNeutralSolidDefault;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGNeutralonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGNeutralSolidDisabled;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGNeutralonSolidDisabled;
      }
    }
  }

  Color get successBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGSuccessSolidDefault;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGSuccessonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGSuccessSolidDisabled;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGSuccessonSolidDisabled;
      }
    }
  }

  Color get dangerBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGDangerSolidDefault;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGDangeronSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGDangerSolidDisabled;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGDangeronSolidDisabled;
      }
    }
  }

  Color get warningBackgroundColor {
    if (enable) {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGWarningSolidDefault;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGWarningonSolidDefault;
      }
    } else {
      switch (style) {
        case KvBadgeStyle.solid:
          return DTokens.badgeColorBGWarningSolidDisabled;
        case KvBadgeStyle.outline:
          return DTokens.colorTransparent;
        case KvBadgeStyle.onBackground:
          return DTokens.badgeColorBGWarningonSolidDisabled;
      }
    }
  }

  EdgeInsets get padding {
    switch (size) {
      case KvBadgeSize.small:
        return EdgeInsets.only(
          left: DTokens.badgeSizeSPaddingHorizontal.toDouble(),
        );
      case KvBadgeSize.medium:
        return EdgeInsets.only(
          left: DTokens.badgeSizeMPaddingHorizontal.toDouble(),
        );
      case KvBadgeSize.large:
        return EdgeInsets.only(
          left: DTokens.badgeSizeLPaddingHorizontal.toDouble(),
        );
      case KvBadgeSize.xLarge:
        return EdgeInsets.only(
          left: DTokens.badgeSizeXLPaddingHorizontal.toDouble(),
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
          return DTokens.badgeColorTextPrimarySolidDefault;
        }
        return DTokens.badgeColorTextPrimarySolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return DTokens.badgeColorTextPrimaryOutlineDefault;
        }
        return DTokens.badgeColorTextPrimaryOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return DTokens.badgeColorTextPrimaryonSolidDefault;
        }
        return DTokens.badgeColorTextPrimaryonSolidDisabled;
    }
  }

  Color get neutralTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return DTokens.badgeColorTextNeutralSolidDefault;
        }
        return DTokens.badgeColorTextNeutralSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return DTokens.badgeColorTextNeutralOutlineDefault;
        }
        return DTokens.badgeColorTextNeutralOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return DTokens.badgeColorTextNeutralonSolidDefault;
        }
        return DTokens.badgeColorTextNeutralonSolidDisabled;
    }
  }

  Color get successTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return DTokens.badgeColorTextSuccessSolidDefault;
        }
        return DTokens.badgeColorTextSuccessSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return DTokens.badgeColorTextSuccessOutlineDefault;
        }
        return DTokens.badgeColorTextSuccessOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return DTokens.badgeColorTextSuccessonSolidDefault;
        }
        return DTokens.badgeColorTextSuccessonSolidDisabled;
    }
  }

  Color get dangerTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return DTokens.badgeColorTextDangerSolidDefault;
        }
        return DTokens.badgeColorTextDangerSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return DTokens.badgeColorTextDangerOutlineDefault;
        }
        return DTokens.badgeColorTextDangerOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return DTokens.badgeColorTextDangeronSolidDefault;
        }
        return DTokens.badgeColorTextDangeronSolidDisabled;
    }
  }

  Color get warningTextColor {
    switch (style) {
      case KvBadgeStyle.solid:
        if (enable) {
          return DTokens.badgeColorTextWarningSolidDefault;
        }
        return DTokens.badgeColorTextWarningSolidDisabled;
      case KvBadgeStyle.outline:
        if (enable) {
          return DTokens.badgeColorTextWarningOutlineDefault;
        }
        return DTokens.badgeColorTextWarningOutlineDisabled;
      case KvBadgeStyle.onBackground:
        if (enable) {
          return DTokens.badgeColorTextWarningonSolidDefault;
        }
        return DTokens.badgeColorTextWarningonSolidDisabled;
    }
  }

  BoxConstraints get constraints {
    return BoxConstraints(
      minWidth: size.minWidth.toDouble(),
      minHeight: size.height.toDouble(),
      maxHeight: size.height.toDouble(),
    );
  }
}
