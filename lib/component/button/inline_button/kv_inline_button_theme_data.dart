import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import '../../../kv_design_system.dart';

enum KvInlineButtonSize {
  small,
  medium,
  large,
}

enum KvInlineButtonVariant {
  primary,
  neutral,
}

class KvInlineButtonThemeData {
  KvInlineButtonThemeData({
    required this.buttonSize,
    required this.buttonVariant,
    required this.enabled,
  });

  final KvInlineButtonSize buttonSize;
  final KvInlineButtonVariant buttonVariant;
  final bool enabled;

  final _kvDesignSystem = KvDesignSystem();

  Color get textColor {
    switch (buttonVariant) {
      case KvInlineButtonVariant.primary:
        if (enabled) {
          return _kvDesignSystem.buttonInlineColorTextPrimaryDefault;
        }
        return _kvDesignSystem.buttonInlineColorTextPrimaryDisabled;
      case KvInlineButtonVariant.neutral:
        if (enabled) {
          return _kvDesignSystem.buttonInlineColorTextNeutralDefault;
        }
        return _kvDesignSystem.buttonInlineColorTextNeutralDisabled;
    }
  }

  TextStyle get textStyle {
    switch (buttonSize) {
      case KvInlineButtonSize.small:
        return KvTextStyles.labelS(color: textColor);
      case KvInlineButtonSize.medium:
        return KvTextStyles.labelM(color: textColor);
      case KvInlineButtonSize.large:
        return KvTextStyles.labelL(color: textColor);
    }
  }

  KvIconSize get iconSize {
    switch (buttonSize) {
      case KvInlineButtonSize.small:
        return KvIconSize.iconS;
      case KvInlineButtonSize.medium:
        return KvIconSize.iconM;
      case KvInlineButtonSize.large:
        return KvIconSize.iconL;
    }
  }

  Color get iconColor {
    switch (buttonVariant) {
      case KvInlineButtonVariant.primary:
        if (enabled) {
          return _kvDesignSystem.buttonInlineColorIconPrimaryDefault;
        }
        return _kvDesignSystem.buttonInlineColorIconPrimaryDisabled;
      case KvInlineButtonVariant.neutral:
        if (enabled) {
          return _kvDesignSystem.buttonInlineColorIconNeutralDefault;
        }
        return _kvDesignSystem.buttonInlineColorIconNeutralDisabled;
    }
  }

  double get gutter {
    switch (buttonSize) {
      case KvInlineButtonSize.small:
        return _kvDesignSystem.buttonInlineGutterS;
      case KvInlineButtonSize.medium:
        return _kvDesignSystem.buttonInlineGutterM;
      case KvInlineButtonSize.large:
        return _kvDesignSystem.buttonInlineGutterL;
    }
  }
}
