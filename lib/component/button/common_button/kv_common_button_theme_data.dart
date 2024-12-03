import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../foundation/d_tokens.dart';
import '../../../utils.dart';

enum KvCommonButtonSize {
  small(DTokens.commonButtonSizeS),
  medium(DTokens.commonButtonSizeM),
  large(DTokens.commonButtonSizeL);

  const KvCommonButtonSize(this.value);

  final double value;
}

enum KvCommonButtonVariant {
  primary,
  success,
  danger,
  warning,
  neutral,
}

enum KvCommonButtonStyle {
  solidButton,
  outlinedButton,
  fadedButton,
  textButton,
}

class KvCommonButtonThemeData extends ButtonStyle {
  const KvCommonButtonThemeData(
    this.context, {
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    this.label,
    this.assetIcon,
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
  final KvSvgAsset? assetIcon;
  final String? badgeText;

  @override
  MaterialStateProperty<Size?>? get minimumSize => MaterialStatePropertyAll(
        Size(
          0,
          buttonSize.value,
        ),
      );

  @override
  MaterialStateProperty<Size?>? get fixedSize {
    if (assetIcon.isNotNullOrEmpty &&
        label.isNullOrEmpty &&
        badgeText.isNullOrEmpty) {
      return MaterialStatePropertyAll(
        Size(
          buttonSize.value,
          buttonSize.value,
        ),
      );
    }
    return null;
  }

  @override
  MaterialStateProperty<Size?>? get maximumSize => MaterialStatePropertyAll(
        Size(
          double.maxFinite,
          buttonSize.value,
        ),
      );

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? get padding {
    if (label.isNullOrEmpty &&
        assetIcon.isNotNullOrEmpty &&
        badgeText.isNullOrEmpty) {
      return const MaterialStatePropertyAll(EdgeInsets.zero);
    }
    double verticalPadding;
    double horizontalPadding;
    switch (buttonSize) {
      case KvCommonButtonSize.small:
        verticalPadding =
            DTokens.commonButtonSizePaddingVerticalS;
        horizontalPadding =
            DTokens.commonButtonSizePaddingHorizontalS;
        break;
      case KvCommonButtonSize.medium:
        verticalPadding =
            DTokens.commonButtonSizePaddingVerticalM;
        horizontalPadding =
            DTokens.commonButtonSizePaddingHorizontalM;
        break;
      case KvCommonButtonSize.large:
        verticalPadding =
            DTokens.commonButtonSizePaddingVerticalL;
        horizontalPadding =
            DTokens.commonButtonSizePaddingHorizontalL;
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
    if (buttonStyle != KvCommonButtonStyle.outlinedButton) {
      return null;
    }
    return MaterialStateProperty.resolveWith((states) {
      Color borderColor;
      switch (buttonVariant) {
        case KvCommonButtonVariant.primary:
          if (states.contains(MaterialState.disabled)) {
            borderColor = DTokens
                .commonButtonColorBorderPrimaryDisabled;
          } else {
            borderColor = DTokens
                .commonButtonColorBorderPrimaryEnabled;
          }
          break;
        case KvCommonButtonVariant.success:
          if (states.contains(MaterialState.disabled)) {
            borderColor = DTokens
                .commonButtonColorBorderSuccessDisabled;
          } else {
            borderColor = DTokens
                .commonButtonColorBorderSuccessEnabled;
          }
          break;
        case KvCommonButtonVariant.danger:
          if (states.contains(MaterialState.disabled)) {
            borderColor = DTokens
                .commonButtonColorBorderDangerDisabled;
          } else {
            borderColor = DTokens
                .commonButtonColorBorderDangerEnabled;
          }
          break;
        case KvCommonButtonVariant.warning:
          if (states.contains(MaterialState.disabled)) {
            borderColor = DTokens
                .commonButtonColorBorderWarningDisabled;
          } else {
            borderColor = DTokens
                .commonButtonColorBorderWarningEnabled;
          }
          break;
        case KvCommonButtonVariant.neutral:
          if (states.contains(MaterialState.disabled)) {
            borderColor = DTokens
                .commonButtonColorBorderNeutralDisabled;
          } else {
            borderColor = DTokens
                .commonButtonColorBorderNeutralEnabled;
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
        case KvCommonButtonStyle.solidButton:
          return _getBackgroundColorSolidButton(states);
        case KvCommonButtonStyle.outlinedButton:
          return _getBackgroundColorOutlinedButton(states);
        case KvCommonButtonStyle.fadedButton:
          return _getBackgroundColorFadedButton(states);
        case KvCommonButtonStyle.textButton:
          return _getBackgroundColorTextButton(states);
      }
    });
  }

  Color _getBackgroundColorSolidButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgPrimarySolidDisabled;
        }
        return DTokens
            .commonButtonColorBgPrimarySolidDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgSuccessSolidDisabled;
        }
        return DTokens
            .commonButtonColorBgSuccessSolidDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgDangerSolidDisabled;
        }
        return DTokens
            .commonButtonColorBgDangerSolidDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgWarningSolidDisabled;
        }
        return DTokens
            .commonButtonColorBgWarningSolidDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgNeutralSolidDisabled;
        }
        return DTokens
            .commonButtonColorBgNeutralSolidDefault;
    }
  }

  Color _getBackgroundColorOutlinedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgPrimaryOutlineDisabled;
        }
        return DTokens
            .commonButtonColorBgPrimaryOutlineDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgSuccessOutlineDisabled;
        }
        return DTokens
            .commonButtonColorBgSuccessOutlineDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgDangerOutlineDisabled;
        }
        return DTokens
            .commonButtonColorBgDangerOutlineDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgWarningOutlineDisabled;
        }
        return DTokens
            .commonButtonColorBgWarningOutlineDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgNeutralOutlineDisabled;
        }
        return DTokens
            .commonButtonColorBgNeutralOutlineDefault;
    }
  }

  Color _getBackgroundColorFadedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgPrimaryFadedDisabled;
        }
        return DTokens
            .commonButtonColorBgPrimaryFadedDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgSuccessFadedDisabled;
        }
        return DTokens
            .commonButtonColorBgSuccessFadedDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgDangerFadedDisabled;
        }
        return DTokens
            .commonButtonColorBgDangerFadedDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgWarningFadedDisabled;
        }
        return DTokens
            .commonButtonColorBgWarningFadedDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgNeutralFadedDisabled;
        }
        return DTokens
            .commonButtonColorBgNeutralFadedDefault;
    }
  }

  Color _getBackgroundColorTextButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgPrimaryTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorBgPrimaryTertiaryDefault;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgSuccessTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorBgSuccessTertiaryDefault;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgDangerTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorBgDangerTertiaryDefault;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgWarningTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorBgWarningTertiaryDefault;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorBgNeutralTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorBgNeutralTertiaryDefault;
    }
  }

  @override
  MaterialStateProperty<TextStyle?>? get textStyle {
    return MaterialStateProperty.resolveWith(
      (states) {
        switch (buttonSize) {
          case KvCommonButtonSize.small:
            return KvTextStyles.labelS();
          case KvCommonButtonSize.medium:
            return KvTextStyles.labelM();
          case KvCommonButtonSize.large:
            return KvTextStyles.labelL();
        }
      },
    );
  }

  @override
  MaterialStateProperty<Color?>? get foregroundColor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      switch (buttonStyle) {
        case KvCommonButtonStyle.solidButton:
          return _getForegroundColorSolidButton(states);
        case KvCommonButtonStyle.outlinedButton:
          return _getForegroundColorOutlinedButton(states);
        case KvCommonButtonStyle.fadedButton:
          return _getForegroundColorFadedButton(states);
        case KvCommonButtonStyle.textButton:
          return _getForegroundColorTextButton(states);
      }
    });
  }

  Color _getForegroundColorSolidButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextPrimarySolidDisabled;
        }
        return DTokens
            .commonButtonColorTextPrimarySolidEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextSuccessSolidDisabled;
        }
        return DTokens
            .commonButtonColorTextSuccessSolidEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextDangerSolidDisabled;
        }
        return DTokens
            .commonButtonColorTextDangerSolidEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextWarningSolidDisabled;
        }
        return DTokens
            .commonButtonColorTextWarningSolidEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextNeutralSolidDisabled;
        }
        return DTokens
            .commonButtonColorTextNeutralSolidEnabled;
    }
  }

  Color _getForegroundColorOutlinedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextPrimaryOutlineDisabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryOutlineEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextSuccessOutlineDisabled;
        }
        return DTokens
            .commonButtonColorTextSuccessOutlineEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextDangerOutlineDisabled;
        }
        return DTokens
            .commonButtonColorTextDangerOutlineEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextWarningOutlineDisabled;
        }
        return DTokens
            .commonButtonColorTextWarningOutlineEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextNeutralOutlineDisabled;
        }
        return DTokens
            .commonButtonColorTextNeutralOutlineEnabled;
    }
  }

  Color _getForegroundColorFadedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextPrimaryFadedDisabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryFadedEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextSuccessFadedDisabled;
        }
        return DTokens
            .commonButtonColorTextSuccessFadedEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextDangerFadedDisabled;
        }
        return DTokens
            .commonButtonColorTextDangerFadedEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextWarningFadedDisabled;
        }
        return DTokens
            .commonButtonColorTextWarningFadedEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextNeutralFadedDisabled;
        }
        return DTokens
            .commonButtonColorTextNeutralFadedEnabled;
    }
  }

  Color _getForegroundColorTextButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextPrimaryTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryTertiaryEnabled;
      case KvCommonButtonVariant.success:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextSuccessTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorTextSuccessTertiaryEnabled;
      case KvCommonButtonVariant.danger:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextDangerTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorTextDangerTertiaryEnabled;
      case KvCommonButtonVariant.warning:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextWarningTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorTextWarningTertiaryEnabled;
      case KvCommonButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens
              .commonButtonColorTextNeutralTertiaryDisabled;
        }
        return DTokens
            .commonButtonColorTextNeutralTertiaryEnabled;
    }
  }

  @override
  MaterialStateProperty<Color?>? get overlayColor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed) ||
          states.contains(MaterialState.focused) ||
          states.contains(MaterialState.hovered)) {
        switch (buttonStyle) {
          case KvCommonButtonStyle.solidButton:
            return _getOverlayColorSolidButton();
          case KvCommonButtonStyle.outlinedButton:
            return _getOverlayColorOutlineButton();
          case KvCommonButtonStyle.fadedButton:
            return _getOverlayColorFadedButton();
          case KvCommonButtonStyle.textButton:
            return _getOverlayColorTextButton();
        }
      }
      return null;
    });
  }

  Color _getOverlayColorSolidButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return DTokens
            .commonButtonColorBgPrimarySolidPressed;
      case KvCommonButtonVariant.success:
        return DTokens
            .commonButtonColorBgSuccessSolidPressed;
      case KvCommonButtonVariant.danger:
        return DTokens
            .commonButtonColorBgDangerSolidPressed;
      case KvCommonButtonVariant.warning:
        return DTokens
            .commonButtonColorBgWarningSolidPressed;
      case KvCommonButtonVariant.neutral:
        return DTokens
            .commonButtonColorBgNeutralSolidPressed;
    }
  }

  Color _getOverlayColorOutlineButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return DTokens
            .commonButtonColorBgPrimaryOutlinePressed;
      case KvCommonButtonVariant.success:
        return DTokens
            .commonButtonColorBgSuccessOutlinePressed;
      case KvCommonButtonVariant.danger:
        return DTokens
            .commonButtonColorBgDangerOutlinePressed;
      case KvCommonButtonVariant.warning:
        return DTokens
            .commonButtonColorBgWarningOutlinePressed;
      case KvCommonButtonVariant.neutral:
        return DTokens
            .commonButtonColorBgNeutralOutlinePressed;
    }
  }

  Color _getOverlayColorFadedButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return DTokens
            .commonButtonColorBgPrimaryFadedPressed;
      case KvCommonButtonVariant.success:
        return DTokens
            .commonButtonColorBgSuccessFadedPressed;
      case KvCommonButtonVariant.danger:
        return DTokens
            .commonButtonColorBgDangerFadedPressed;
      case KvCommonButtonVariant.warning:
        return DTokens
            .commonButtonColorBgWarningFadedPressed;
      case KvCommonButtonVariant.neutral:
        return DTokens
            .commonButtonColorBgNeutralFadedPressed;
    }
  }

  Color _getOverlayColorTextButton() {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        return DTokens
            .commonButtonColorBgPrimaryTertiaryPressed;
      case KvCommonButtonVariant.success:
        return DTokens
            .commonButtonColorBgSuccessTertiaryPressed;
      case KvCommonButtonVariant.danger:
        return DTokens
            .commonButtonColorBgDangerTertiaryPressed;
      case KvCommonButtonVariant.warning:
        return DTokens
            .commonButtonColorBgWarningTertiaryPressed;
      case KvCommonButtonVariant.neutral:
        return DTokens
            .commonButtonColorBgNeutralTertiaryPressed;
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
      case KvCommonButtonSize.small:
        return DTokens.commonButtonSizeGutterS;
      case KvCommonButtonSize.medium:
        return DTokens.commonButtonSizeGutterM;
      case KvCommonButtonSize.large:
        return DTokens.commonButtonSizeGutterL;
    }
  }

  KvBadgeStyle get badgeStyle {
    switch (buttonStyle) {
      case KvCommonButtonStyle.solidButton:
        return KvBadgeStyle.onBackground;
      case KvCommonButtonStyle.outlinedButton:
      case KvCommonButtonStyle.fadedButton:
      case KvCommonButtonStyle.textButton:
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
      case KvCommonButtonSize.small:
        return KvBadgeSize.small;
      case KvCommonButtonSize.medium:
        return KvBadgeSize.medium;
      case KvCommonButtonSize.large:
        return KvBadgeSize.large;
    }
  }

  Color getIconColor(bool enabled) {
    switch (buttonStyle) {
      case KvCommonButtonStyle.solidButton:
        return _getIconColorSolidButton(enabled);
      case KvCommonButtonStyle.outlinedButton:
        return _getIconColorOutlinedButton(enabled);
      case KvCommonButtonStyle.fadedButton:
        return _getIconColorFadedButton(enabled);
      case KvCommonButtonStyle.textButton:
        return _getIconColorTextButton(enabled);
    }
  }

  Color _getIconColorSolidButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonColorTextPrimarySolidEnabled;
        }
        return DTokens
            .commonButtonColorTextPrimarySolidDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return DTokens
              .commonButtonColorTextSuccessSolidEnabled;
        }
        return DTokens
            .commonButtonColorTextSuccessSolidDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return DTokens
              .commonButtonColorTextDangerSolidEnabled;
        }
        return DTokens
            .commonButtonColorTextDangerSolidDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return DTokens
              .commonButtonColorTextWarningSolidEnabled;
        }
        return DTokens
            .commonButtonColorTextWarningSolidDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonColorTextNeutralSolidEnabled;
        }
        return DTokens
            .commonButtonColorTextNeutralSolidDisabled;
    }
  }

  Color _getIconColorOutlinedButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonColorTextPrimaryOutlineEnabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryOutlineDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return DTokens
              .commonButtonColorTextSuccessOutlineEnabled;
        }
        return DTokens
            .commonButtonColorTextSuccessOutlineDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return DTokens
              .commonButtonColorTextDangerOutlineEnabled;
        }
        return DTokens
            .commonButtonColorTextDangerOutlineDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return DTokens
              .commonButtonColorTextWarningOutlineEnabled;
        }
        return DTokens
            .commonButtonColorTextWarningOutlineDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonColorTextNeutralOutlineEnabled;
        }
        return DTokens
            .commonButtonColorTextNeutralOutlineDisabled;
    }
  }

  Color _getIconColorFadedButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonColorTextPrimaryFadedEnabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryFadedDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return DTokens
              .commonButtonColorTextSuccessFadedEnabled;
        }
        return DTokens
            .commonButtonColorTextSuccessFadedDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return DTokens
              .commonButtonColorTextDangerFadedEnabled;
        }
        return DTokens
            .commonButtonColorTextDangerFadedDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return DTokens
              .commonButtonColorTextWarningFadedEnabled;
        }
        return DTokens
            .commonButtonColorTextWarningFadedDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonColorTextNeutralFadedEnabled;
        }
        return DTokens
            .commonButtonColorTextNeutralFadedDisabled;
    }
  }

  Color _getIconColorTextButton(bool enabled) {
    switch (buttonVariant) {
      case KvCommonButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonColorTextPrimaryTertiaryEnabled;
        }
        return DTokens
            .commonButtonColorTextPrimaryTertiaryDisabled;
      case KvCommonButtonVariant.success:
        if (enabled) {
          return DTokens
              .commonButtonColorTextSuccessTertiaryEnabled;
        }
        return DTokens
            .commonButtonColorTextSuccessTertiaryDisabled;
      case KvCommonButtonVariant.danger:
        if (enabled) {
          return DTokens
              .commonButtonColorTextDangerTertiaryEnabled;
        }
        return DTokens
            .commonButtonColorTextDangerTertiaryDisabled;
      case KvCommonButtonVariant.warning:
        if (enabled) {
          return DTokens
              .commonButtonColorTextWarningTertiaryEnabled;
        }
        return DTokens
            .commonButtonColorTextWarningTertiaryDisabled;
      case KvCommonButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonColorTextNeutralTertiaryEnabled;
        }
        return DTokens
            .commonButtonColorTextNeutralTertiaryDisabled;
    }
  }
}
