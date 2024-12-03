import 'package:flutter/material.dart';

import '../../../foundation/d_tokens.dart';
import '../../../foundation/kv_icon.dart';

enum KvCircleButtonStyle {
  text,
  faded,
}

enum KvCircleButtonSize {
  xSmall,
  small,
  medium,
  large,
  xLarge,
}

enum KvCircleButtonVariant {
  primary,
  neutral,
}

class KvCircleButtonThemeData extends ButtonStyle {
  const KvCircleButtonThemeData(
    this.context, {
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
  }) : super(
          animationDuration: kThemeChangeDuration,
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;
  final KvCircleButtonStyle buttonStyle;
  final KvCircleButtonSize buttonSize;
  final KvCircleButtonVariant buttonVariant;

  @override
  MaterialStateProperty<Size?>? get minimumSize {
    return MaterialStatePropertyAll(_size);
  }

  @override
  MaterialStateProperty<Size?>? get maximumSize {
    return MaterialStatePropertyAll(_size);
  }

  Size get _size {
    switch (buttonSize) {
      case KvCircleButtonSize.xSmall:
        return Size(
          DTokens.buttonSizeXS.toDouble(),
          DTokens.buttonSizeXS.toDouble(),
        );
      case KvCircleButtonSize.small:
        return Size(
          DTokens.buttonSizeS.toDouble(),
          DTokens.buttonSizeS.toDouble(),
        );
      case KvCircleButtonSize.medium:
        return Size(
          DTokens.buttonSizeM.toDouble(),
          DTokens.buttonSizeM.toDouble(),
        );
      case KvCircleButtonSize.large:
        return Size(
          DTokens.buttonSizeL.toDouble(),
          DTokens.buttonSizeL.toDouble(),
        );
      case KvCircleButtonSize.xLarge:
        return Size(
          DTokens.buttonSizeXL.toDouble(),
          DTokens.buttonSizeXL.toDouble(),
        );
    }
  }

  @override
  MaterialStateProperty<Size?>? get fixedSize {
    return MaterialStatePropertyAll(_size);
  }

  @override
  MaterialStateProperty<EdgeInsetsGeometry?>? get padding {
    return const MaterialStatePropertyAll(EdgeInsets.zero);
  }

  @override
  MaterialStateProperty<OutlinedBorder?>? get shape {
    return const MaterialStatePropertyAll(CircleBorder());
  }

  @override
  MaterialStateProperty<Color?>? get backgroundColor {
    return MaterialStateProperty.resolveWith((states) {
      switch (buttonStyle) {
        case KvCircleButtonStyle.text:
          return Colors.transparent;
        case KvCircleButtonStyle.faded:
          return _getBackgroundColorFadedButton(states);
      }
    });
  }

  Color _getBackgroundColorFadedButton(Set<MaterialState> states) {
    switch (buttonVariant) {
      case KvCircleButtonVariant.primary:
        if (states.contains(MaterialState.disabled)) {
          return DTokens.buttonColorBGPrimaryFadedDisabled;
        }
        return DTokens.buttonColorBGPrimaryFadedDefault;
      case KvCircleButtonVariant.neutral:
        if (states.contains(MaterialState.disabled)) {
          return DTokens.buttonColorBGNeutralFadedDisabled;
        }
        return DTokens.buttonColorBGNeutralFadedDefault;
    }
  }

  @override
  MaterialStateProperty<Color?>? get overlayColor {
    return MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed) ||
          states.contains(MaterialState.focused) ||
          states.contains(MaterialState.hovered)) {
        switch (buttonStyle) {
          case KvCircleButtonStyle.text:
            switch (buttonVariant) {
              case KvCircleButtonVariant.primary:
                return DTokens.buttonColorBGPrimaryTertiaryPressed;
              case KvCircleButtonVariant.neutral:
                return DTokens.buttonColorBGNeutralTertiaryPressed;
            }
          case KvCircleButtonStyle.faded:
            switch (buttonVariant) {
              case KvCircleButtonVariant.primary:
                return DTokens.buttonColorBGPrimaryFadedPressed;
              case KvCircleButtonVariant.neutral:
                return DTokens.buttonColorBGNeutralFadedPressed;
            }
        }
      }
      return null;
    });
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

  Color getIconColor(bool enabled) {
    switch (buttonStyle) {
      case KvCircleButtonStyle.text:
        return _getIconColorTextButton(enabled);
      case KvCircleButtonStyle.faded:
        return _getIconColorFadedButton(enabled);
    }
  }

  Color _getIconColorTextButton(bool enabled) {
    switch (buttonVariant) {
      case KvCircleButtonVariant.primary:
        if (enabled) {
          return DTokens.buttonColorTextPrimaryTertiaryEnabled;
        }
        return DTokens.buttonColorTextPrimaryTertiaryDisabled;
      case KvCircleButtonVariant.neutral:
        if (enabled) {
          return DTokens.buttonColorIconCircleTextEnabled;
        }
        return DTokens.buttonColorIconCircleTextDisabled;
    }
  }

  Color _getIconColorFadedButton(bool enabled) {
    switch (buttonVariant) {
      case KvCircleButtonVariant.primary:
        if (enabled) {
          return DTokens.buttonColorTextPrimaryFadedEnabled;
        }
        return DTokens.buttonColorTextPrimaryFadedDisabled;
      case KvCircleButtonVariant.neutral:
        if (enabled) {
          return DTokens.buttonColorIconCircleFadedEnabled;
        }
        return DTokens.buttonColorIconCircleFadedDisabled;
    }
  }

  KvIconSize get iconSize {
    switch (buttonSize) {
      case KvCircleButtonSize.xSmall:
        return KvIconSize.iconXS;
      case KvCircleButtonSize.small:
        return KvIconSize.iconS;
      case KvCircleButtonSize.medium:
        return KvIconSize.iconM;
      case KvCircleButtonSize.large:
        return KvIconSize.iconL;
      case KvCircleButtonSize.xLarge:
        return KvIconSize.iconXL;
    }
  }
}
