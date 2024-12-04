import 'package:flutter/material.dart';

import '../../../foundation/kv_text_styles.dart';
import '../../../kv_design_system.dart';
import '../../../utils.dart';
import '../../badge/kv_badge_theme_data.dart';

enum KvCommonButtonSize {
  xSmall,
  small,
  medium,
  large,
  xLarge,
}

enum KvCommonButtonVariant {
  primary,
  success,
  danger,
  warning,
  neutral,
}

enum KvCommonButtonStyle {
  solid,
  outlined,
  faded,
  text,
}

class KvCommonButtonThemeData extends ButtonStyle {
  const KvCommonButtonThemeData(
    this.context, {
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    this.label,
    this.icon,
    this.badgeText,
  }) : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  final KvCommonButtonStyle buttonStyle;
  final KvCommonButtonSize buttonSize;
  final KvCommonButtonVariant buttonVariant;
  final String? label;
  final IconData? icon;
  final String? badgeText;

  @override
  MaterialStateProperty<Size?>? get minimumSize => MaterialStatePropertyAll(
        Size(0, _size),
      );

  @override
  MaterialStateProperty<Size?>? get fixedSize {
    if (icon != null && label.isNullOrEmpty && badgeText.isNullOrEmpty) {
      return MaterialStatePropertyAll(
        Size(_size, _size),
      );
    }
    return null;
  }

  @override
  MaterialStateProperty<Size?>? get maximumSize => MaterialStatePropertyAll(
        Size(double.maxFinite, _size),
      );

  double get _size {
    switch (buttonSize) {
      case KvCommonButtonSize.xSmall:
        return KvDesignSystem().buttonSizeXS;
      case KvCommonButtonSize.small:
        return KvDesignSystem().buttonSizeS;
      case KvCommonButtonSize.medium:
        return KvDesignSystem().buttonSizeM;
      case KvCommonButtonSize.large:
        return KvDesignSystem().buttonSizeL;
      case KvCommonButtonSize.xLarge:
        return KvDesignSystem().buttonSizeXL;
    }
  }

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? get padding {
    if (label.isNullOrEmpty && icon != null && badgeText.isNullOrEmpty) {
      return const MaterialStatePropertyAll(EdgeInsets.zero);
    }
    double verticalPadding;
    double horizontalPadding;
    switch (buttonSize) {
      case KvCommonButtonSize.xSmall:
      case KvCommonButtonSize.small:
        verticalPadding = KvDesignSystem().buttonSizePaddingVerticalS;
        horizontalPadding = KvDesignSystem().buttonSizePaddingHorizontalS;
        break;
      case KvCommonButtonSize.medium:
        verticalPadding = KvDesignSystem().buttonSizePaddingVerticalM;
        horizontalPadding = KvDesignSystem().buttonSizePaddingHorizontalM;
        break;
      case KvCommonButtonSize.large:
        verticalPadding = KvDesignSystem().buttonSizePaddingVerticalL;
        horizontalPadding = KvDesignSystem().buttonSizePaddingHorizontalL;
        break;
      case KvCommonButtonSize.xLarge:
        verticalPadding = KvDesignSystem().buttonSizePaddingVerticalXL;
        horizontalPadding = KvDesignSystem().buttonSizePaddingHorizontalXL;
        break;
    }
    return MaterialStatePropertyAll(
      EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
    );
  }

  @override
  MaterialStateProperty<OutlinedBorder?>? get shape {
    return const MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    );
  }

  @override
  MaterialStateProperty<BorderSide?>? get side {
    if (buttonStyle != KvCommonButtonStyle.outlined) {
      return null;
    }
    return MaterialStateProperty.resolveWith((states) {
      Color borderColor;
      switch (buttonVariant) {
        case KvCommonButtonVariant.primary:
          if (states.contains(MaterialState.disabled)) {
            borderColor = KvDesignSystem().buttonColorBorderPrimaryDisabled;
          } else {
            borderColor = KvDesignSystem().buttonColorBorderPrimaryEnabled;
          }
          break;
        case KvCommonButtonVariant.success:
          if (states.contains(MaterialState.disabled)) {
            borderColor = KvDesignSystem().buttonColorBorderSuccessDisabled;
          } else {
            borderColor = KvDesignSystem().buttonColorBorderSuccessEnabled;
          }
          break;
        case KvCommonButtonVariant.danger:
          if (states.contains(MaterialState.disabled)) {
            borderColor = KvDesignSystem().buttonColorBorderDangerDisabled;
          } else {
            borderColor = KvDesignSystem().buttonColorBorderDangerEnabled;
          }
          break;
        case KvCommonButtonVariant.warning:
          if (states.contains(MaterialState.disabled)) {
            borderColor = KvDesignSystem().buttonColorBorderWarningDisabled;
          } else {
            borderColor = KvDesignSystem().buttonColorBorderWarningEnabled;
          }
          break;
        case KvCommonButtonVariant.neutral:
          if (states.contains(MaterialState.disabled)) {
            borderColor = KvDesignSystem().buttonColorBorderNeutralDisabled;
          } else {
            borderColor = KvDesignSystem().buttonColorBorderNeutralEnabled;
          }
          break;
      }
      return BorderSide(
        color: borderColor,
        width: 0.5,
      );
    });
  }

  @override
  MaterialStateProperty<Color?>? get backgroundColor {
    return MaterialStateProperty.resolveWith((states) {
      switch (buttonStyle) {
        case KvCommonButtonStyle.solid:
          return _getBackgroundColorSolidButton(states);
        case KvCommonButtonStyle.outlined:
          return _getBackgroundColorOutlinedButton(states);
        case KvCommonButtonStyle.faded:
          return _getBackgroundColorFadedButton(states);
        case KvCommonButtonStyle.text:
          return _getBackgroundColorTextButton(states);
      }
    });
  }

  Color _getBackgroundColorSolidButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGPrimarySolidDisabled;
        }
        return KvDesignSystem().buttonColorBGPrimarySolidDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGSuccessSolidDisabled;
        }
        return KvDesignSystem().buttonColorBGSuccessSolidDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGDangerSolidDisabled;
        }
        return KvDesignSystem().buttonColorBGDangerSolidDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGWarningSolidDisabled;
        }
        return KvDesignSystem().buttonColorBGWarningSolidDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGNeutralSolidDisabled;
        }
        return KvDesignSystem().buttonColorBGNeutralSolidDefault;
    }
  }

  Color _getBackgroundColorOutlinedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGPrimaryOutlineDisabled;
        }
        return KvDesignSystem().buttonColorBGPrimaryOutlineDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGSuccessOutlineDisabled;
        }
        return KvDesignSystem().buttonColorBGSuccessOutlineDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGDangerOutlineDisabled;
        }
        return KvDesignSystem().buttonColorBGDangerOutlineDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGWarningOutlineDisabled;
        }
        return KvDesignSystem().buttonColorBGWarningOutlineDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGNeutralOutlineDisabled;
        }
        return KvDesignSystem().buttonColorBGNeutralOutlineDefault;
    }
  }

  Color _getBackgroundColorFadedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGPrimaryFadedDisabled;
        }
        return KvDesignSystem().buttonColorBGPrimaryFadedDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGSuccessFadedDisabled;
        }
        return KvDesignSystem().buttonColorBGSuccessFadedDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGDangerFadedDisabled;
        }
        return KvDesignSystem().buttonColorBGDangerFadedDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGWarningFadedDisabled;
        }
        return KvDesignSystem().buttonColorBGWarningFadedDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGNeutralFadedDisabled;
        }
        return KvDesignSystem().buttonColorBGNeutralFadedDefault;
    }
  }

  Color _getBackgroundColorTextButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGPrimaryTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorBGPrimaryTertiaryDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGSuccessTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorBGSuccessTertiaryDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGDangerTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorBGDangerTertiaryDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGWarningTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorBGWarningTertiaryDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorBGNeutralTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorBGNeutralTertiaryDefault;
    }
  }

  @override
  MaterialStateProperty<TextStyle?>? get textStyle {
    return MaterialStateProperty.resolveWith(
      (states) {
        switch (buttonSize) {
          case KvCommonButtonSize.xSmall:
            return KvTextStyles.labelXS();
          case KvCommonButtonSize.small:
            return KvTextStyles.labelS();
          case KvCommonButtonSize.medium:
            return KvTextStyles.labelM();
          case KvCommonButtonSize.large:
            return KvTextStyles.labelL();
          case KvCommonButtonSize.xLarge:
            return KvTextStyles.labelXL();
        }
      },
    );
  }

  @override
  MaterialStateProperty<Color?>? get foregroundColor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      switch (buttonStyle) {
        case KvCommonButtonStyle.solid:
          return _getForegroundColorSolidButton(states);
        case KvCommonButtonStyle.outlined:
          return _getForegroundColorOutlinedButton(states);
        case KvCommonButtonStyle.faded:
          return _getForegroundColorFadedButton(states);
        case KvCommonButtonStyle.text:
          return _getForegroundColorTextButton(states);
      }
    });
  }

  Color _getForegroundColorSolidButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextPrimarySolidDisabled;
        }
        return KvDesignSystem().buttonColorTextPrimarySolidEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextSuccessSolidDisabled;
        }
        return KvDesignSystem().buttonColorTextSuccessSolidEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextDangerSolidDisabled;
        }
        return KvDesignSystem().buttonColorTextDangerSolidEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextWarningSolidDisabled;
        }
        return KvDesignSystem().buttonColorTextWarningSolidEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextNeutralSolidDisabled;
        }
        return KvDesignSystem().buttonColorTextNeutralSolidEnabled;
    }
  }

  Color _getForegroundColorOutlinedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextPrimaryOutlineDisabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryOutlineEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextSuccessOutlineDisabled;
        }
        return KvDesignSystem().buttonColorTextSuccessOutlineEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextDangerOutlineDisabled;
        }
        return KvDesignSystem().buttonColorTextDangerOutlineEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextWarningOutlineDisabled;
        }
        return KvDesignSystem().buttonColorTextWarningOutlineEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextNeutralOutlineDisabled;
        }
        return KvDesignSystem().buttonColorTextNeutralOutlineEnabled;
    }
  }

  Color _getForegroundColorFadedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextPrimaryFadedDisabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryFadedEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextSuccessFadedDisabled;
        }
        return KvDesignSystem().buttonColorTextSuccessFadedEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextDangerFadedDisabled;
        }
        return KvDesignSystem().buttonColorTextDangerFadedEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextWarningFadedDisabled;
        }
        return KvDesignSystem().buttonColorTextWarningFadedEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextNeutralFadedDisabled;
        }
        return KvDesignSystem().buttonColorTextNeutralFadedEnabled;
    }
  }

  Color _getForegroundColorTextButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextPrimaryTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryTertiaryEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextSuccessTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorTextSuccessTertiaryEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextDangerTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorTextDangerTertiaryEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextWarningTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorTextWarningTertiaryEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return KvDesignSystem().buttonColorTextNeutralTertiaryDisabled;
        }
        return KvDesignSystem().buttonColorTextNeutralTertiaryEnabled;
    }
  }

  @override
  MaterialStateProperty<Color?>? get overlayColor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed) ||
          states.contains(MaterialState.focused) ||
          states.contains(MaterialState.hovered)) {
        switch (buttonStyle) {
          case KvCommonButtonStyle.solid:
            return _getOverlayColorSolidButton();
          case KvCommonButtonStyle.outlined:
            return _getOverlayColorOutlineButton();
          case KvCommonButtonStyle.faded:
            return _getOverlayColorFadedButton();
          case KvCommonButtonStyle.text:
            return _getOverlayColorTextButton();
        }
      }
      return null;
    });
  }

  Color _getOverlayColorSolidButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return KvDesignSystem().buttonColorBGPrimarySolidPressed;
      case KvCommonButtonVariant.success:
        return KvDesignSystem().buttonColorBGSuccessSolidPressed;
      case KvCommonButtonVariant.danger:
        return KvDesignSystem().buttonColorBGDangerSolidPressed;
      case KvCommonButtonVariant.warning:
        return KvDesignSystem().buttonColorBGWarningSolidPressed;
      case KvCommonButtonVariant.neutral:
        return KvDesignSystem().buttonColorBGNeutralSolidPressed;
    }
  }

  Color _getOverlayColorOutlineButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return KvDesignSystem().buttonColorBGPrimaryOutlinePressed;
      case KvCommonButtonVariant.success:
        return KvDesignSystem().buttonColorBGSuccessOutlinePressed;
      case KvCommonButtonVariant.danger:
        return KvDesignSystem().buttonColorBGDangerOutlinePressed;
      case KvCommonButtonVariant.warning:
        return KvDesignSystem().buttonColorBGWarningOutlinePressed;
      case KvCommonButtonVariant.neutral:
        return KvDesignSystem().buttonColorBGNeutralOutlinePressed;
    }
  }

  Color _getOverlayColorFadedButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return KvDesignSystem().buttonColorBGPrimaryFadedPressed;
      case KvCommonButtonVariant.success:
        return KvDesignSystem().buttonColorBGSuccessFadedPressed;
      case KvCommonButtonVariant.danger:
        return KvDesignSystem().buttonColorBGDangerFadedPressed;
      case KvCommonButtonVariant.warning:
        return KvDesignSystem().buttonColorBGWarningFadedPressed;
      case KvCommonButtonVariant.neutral:
        return KvDesignSystem().buttonColorBGNeutralFadedPressed;
    }
  }

  Color _getOverlayColorTextButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return KvDesignSystem().buttonColorBGPrimaryTertiaryPressed;
      case KvCommonButtonVariant.success:
        return KvDesignSystem().buttonColorBGSuccessTertiaryPressed;
      case KvCommonButtonVariant.danger:
        return KvDesignSystem().buttonColorBGDangerTertiaryPressed;
      case KvCommonButtonVariant.warning:
        return KvDesignSystem().buttonColorBGWarningTertiaryPressed;
      case KvCommonButtonVariant.neutral:
        return KvDesignSystem().buttonColorBGNeutralTertiaryPressed;
    }
  }

  @override
  MaterialStateProperty<Color>? get shadowColor {
    return const MaterialStatePropertyAll<Color>(Colors.transparent);
  }

  @override
  MaterialStateProperty<Color>? get surfaceTintColor {
    return const MaterialStatePropertyAll<Color>(Colors.transparent);
  }

  @override
  MaterialStateProperty<double>? get elevation {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return 0.0;
    });
  }

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return SystemMouseCursors.basic;
      }
      return SystemMouseCursors.click;
    });
  }

  @override
  VisualDensity? get visualDensity {
    return Theme.of(context).visualDensity;
  }

  @override
  MaterialTapTargetSize? get tapTargetSize {
    return MaterialTapTargetSize.padded;
  }

  @override
  InteractiveInkFeatureFactory? get splashFactory {
    return null;
  }

  double get gutter {
    switch (buttonSize) {
      case KvCommonButtonSize.xSmall:
      case KvCommonButtonSize.small:
        return KvDesignSystem().buttonSizeGutterS;
      case KvCommonButtonSize.medium:
        return KvDesignSystem().buttonSizeGutterM;
      case KvCommonButtonSize.large:
        return KvDesignSystem().buttonSizeGutterL;
      case KvCommonButtonSize.xLarge:
        return KvDesignSystem().buttonSizeGutterXL;
    }
  }

  KvBadgeStyle get badgeStyle {
    switch (buttonStyle) {
      case KvCommonButtonStyle.solid:
        return KvBadgeStyle.onBackground;
      case KvCommonButtonStyle.outlined:
      case KvCommonButtonStyle.faded:
      case KvCommonButtonStyle.text:
        return KvBadgeStyle.solid;
    }
  }

  KvBadgeVariant get badgeVariant {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return KvBadgeVariant.primary;
      case KvCommonButtonVariant.success:
        return KvBadgeVariant.success;
      case KvCommonButtonVariant.danger:
        return KvBadgeVariant.danger;
      case KvCommonButtonVariant.warning:
        return KvBadgeVariant.warning;
      case KvCommonButtonVariant.neutral:
        return KvBadgeVariant.neutral;
    }
  }

  KvBadgeSize get badgeSize {
    switch (buttonSize) {
      case KvCommonButtonSize.xSmall:
      case KvCommonButtonSize.small:
        return KvBadgeSize.small;
      case KvCommonButtonSize.medium:
        return KvBadgeSize.medium;
      case KvCommonButtonSize.large:
        return KvBadgeSize.large;
      case KvCommonButtonSize.xLarge:
        return KvBadgeSize.xLarge;
    }
  }

  Color getIconColor(bool enabled) {
    switch (buttonStyle) {
      case KvCommonButtonStyle.solid:
        return _getIconColorSolidButton(enabled);
      case KvCommonButtonStyle.outlined:
        return _getIconColorOutlinedButton(enabled);
      case KvCommonButtonStyle.faded:
        return _getIconColorFadedButton(enabled);
      case KvCommonButtonStyle.text:
        return _getIconColorTextButton(enabled);
    }
  }

  Color _getIconColorSolidButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return KvDesignSystem().buttonColorTextPrimarySolidEnabled;
        }
        return KvDesignSystem().buttonColorTextPrimarySolidDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return KvDesignSystem().buttonColorTextSuccessSolidEnabled;
        }
        return KvDesignSystem().buttonColorTextSuccessSolidDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return KvDesignSystem().buttonColorTextDangerSolidEnabled;
        }
        return KvDesignSystem().buttonColorTextDangerSolidDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return KvDesignSystem().buttonColorTextWarningSolidEnabled;
        }
        return KvDesignSystem().buttonColorTextWarningSolidDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return KvDesignSystem().buttonColorTextNeutralSolidEnabled;
        }
        return KvDesignSystem().buttonColorTextNeutralSolidDisabled;
    }
  }

  Color _getIconColorOutlinedButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return KvDesignSystem().buttonColorTextPrimaryOutlineEnabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryOutlineDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return KvDesignSystem().buttonColorTextSuccessOutlineEnabled;
        }
        return KvDesignSystem().buttonColorTextSuccessOutlineDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return KvDesignSystem().buttonColorTextDangerOutlineEnabled;
        }
        return KvDesignSystem().buttonColorTextDangerOutlineDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return KvDesignSystem().buttonColorTextWarningOutlineEnabled;
        }
        return KvDesignSystem().buttonColorTextWarningOutlineDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return KvDesignSystem().buttonColorTextNeutralOutlineEnabled;
        }
        return KvDesignSystem().buttonColorTextNeutralOutlineDisabled;
    }
  }

  Color _getIconColorFadedButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return KvDesignSystem().buttonColorTextPrimaryFadedEnabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryFadedDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return KvDesignSystem().buttonColorTextSuccessFadedEnabled;
        }
        return KvDesignSystem().buttonColorTextSuccessFadedDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return KvDesignSystem().buttonColorTextDangerFadedEnabled;
        }
        return KvDesignSystem().buttonColorTextDangerFadedDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return KvDesignSystem().buttonColorTextWarningFadedEnabled;
        }
        return KvDesignSystem().buttonColorTextWarningFadedDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return KvDesignSystem().buttonColorTextNeutralFadedEnabled;
        }
        return KvDesignSystem().buttonColorTextNeutralFadedDisabled;
    }
  }

  Color _getIconColorTextButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return KvDesignSystem().buttonColorTextPrimaryTertiaryEnabled;
        }
        return KvDesignSystem().buttonColorTextPrimaryTertiaryDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return KvDesignSystem().buttonColorTextSuccessTertiaryEnabled;
        }
        return KvDesignSystem().buttonColorTextSuccessTertiaryDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return KvDesignSystem().buttonColorTextDangerTertiaryEnabled;
        }
        return KvDesignSystem().buttonColorTextDangerTertiaryDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return KvDesignSystem().buttonColorTextWarningTertiaryEnabled;
        }
        return KvDesignSystem().buttonColorTextWarningTertiaryDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return KvDesignSystem().buttonColorTextNeutralTertiaryEnabled;
        }
        return KvDesignSystem().buttonColorTextNeutralTertiaryDisabled;
    }
  }
}
