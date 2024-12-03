import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

enum KvInlineButtonSize {
  small(DTokens.sizeSize16),
  medium(DTokens.sizeSize20),
  large(DTokens.sizeSize24);

  const KvInlineButtonSize(this.value);

  final double value;
}

enum KvInlineButtonVariant {
  primary,
  neutral,
}

class KvInlineButtonThemeData {
  const KvInlineButtonThemeData({
    required this.buttonSize,
    required this.buttonVariant,
    required this.enabled,
  });

  final KvInlineButtonSize buttonSize;
  final KvInlineButtonVariant buttonVariant;
  final bool enabled;

  Color get textColor {
    switch (buttonVariant) {
      case KvInlineButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonInlineColorTextPrimaryDefault;
        }
        return DTokens
            .commonButtonInlineColorTextPrimaryDisabled;
      case KvInlineButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonInlineColorTextNeutralDefault;
        }
        return DTokens
            .commonButtonInlineColorTextNeutralDisabled;
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
        return KvIconSize.size12;
      case KvInlineButtonSize.medium:
        return KvIconSize.size16;
      case KvInlineButtonSize.large:
        return KvIconSize.size20;
    }
  }

  Color get iconColor {
    switch (buttonVariant) {
      case KvInlineButtonVariant.primary:
        if (enabled) {
          return DTokens
              .commonButtonInlineColorIconPrimaryDefault;
        }
        return DTokens
            .commonButtonInlineColorIconPrimaryDisabled;
      case KvInlineButtonVariant.neutral:
        if (enabled) {
          return DTokens
              .commonButtonInlineColorIconNeutralDefault;
        }
        return DTokens
            .commonButtonInlineColorIconNeutralDisabled;
    }
  }

  double get gutter {
    switch (buttonSize) {
      case KvInlineButtonSize.small:
        return 4.0;
      case KvInlineButtonSize.medium:
        return 8.0;
      case KvInlineButtonSize.large:
        return 12.0;
    }
  }
}
