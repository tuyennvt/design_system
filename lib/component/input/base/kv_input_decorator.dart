import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../utils.dart';
import 'kv_input_state.dart';

class KvInputDecorator {
  KvInputDecorator({
    required this.controllerText,
    required this.enabled,
    required this.readOnly,
    required this.inputSize,
    required this.inputState,
    required this.decoration,
  });

  final String controllerText;
  final bool enabled;
  final bool readOnly;
  final KvInputSize inputSize;
  final KvInputState inputState;
  final KvInputDecoration decoration;

  BorderRadius get borderRadius {
    return const BorderRadius.all(
      Radius.circular(8.0),
    );
  }

  Border get border {
    Color inputBorderColor;
    if (!enabled) {
      inputBorderColor =
          KvDesignSystem().dataInputInputColorBorderDisabled;
    } else if (enabled && readOnly) {
      inputBorderColor =
          KvDesignSystem().dataInputInputColorBorderDefault;
    } else {
      switch (inputState) {
        case KvInputState.idle:
          inputBorderColor =
              KvDesignSystem().dataInputInputColorBorderDefault;
          break;
        case KvInputState.focused:
          inputBorderColor =
              KvDesignSystem().dataInputInputColorBorderActivated;
          break;
        case KvInputState.focusedError:
          inputBorderColor =
              KvDesignSystem().dataInputInputColorBorderError;
          break;
        case KvInputState.error:
          inputBorderColor =
              KvDesignSystem().dataInputInputColorBorderError;
          break;
      }
    }
    return Border.all(color: inputBorderColor);
  }

  Widget get prefix {
    BoxConstraints constraints = decoration.prefixIconConstraints;
    if (decoration.assetPrefixIcon.isNotNullOrEmpty) {
      return Padding(
        padding: const EdgeInsets.only(right: KvDesignSystem().sizeSize16),
        child: ConstrainedBox(
          constraints: constraints,
          child: SvgPicture.asset(
            decoration.assetPrefixIcon!.value,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: prefixIconColor,
          ),
        ),
      );
    }
    return const SizedBox();
  }

  Widget get suffix {
    BoxConstraints constraints = decoration.suffixIconConstraints;
    if (decoration.assetSuffixIcon.isNotNullOrEmpty) {
      return ConstrainedBox(
        constraints: constraints,
        child: SvgPicture.asset(
          decoration.assetSuffixIcon!.value,
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          color: suffixIconColor,
        ),
      );
    } else if (decoration.suffixText.isNotNullOrEmpty) {
      AlignmentGeometry alignment = Alignment.center;
      if (controllerText.isNotNullOrEmpty ||
          (inputState == KvInputState.focused ||
              inputState == KvInputState.focusedError)) {
        alignment = Alignment.bottomCenter;
      }
      return Container(
        padding: const EdgeInsets.only(left: 4),
        height: inputSize.value - 8,
        child: AnimatedAlign(
          alignment: alignment,
          duration: const Duration(milliseconds: 167),
          child: Text(
            decoration.suffixText!,
            style: KvTextStyles.bodyMRE(
              color: KvDesignSystem().colorTextNeutralPlaceholder,
            ),
          ),
        ),
      );
    }
    return const SizedBox();
  }

  EdgeInsets get verticalPadding {
    return const EdgeInsets.symmetric(vertical: 3);
  }

  Color get prefixIconColor {
    if (enabled) {
      return KvDesignSystem().dataInputInputColorIconPrefix;
    }
    return KvDesignSystem().dataInputInputColorIconDisabled;
  }

  Color get suffixIconColor {
    if (enabled) {
      return KvDesignSystem().dataInputInputColorIconAction;
    }
    return KvDesignSystem().dataInputInputColorIconDisabled;
  }

  Color get backgroundColor {
    if (!enabled) {
      return KvDesignSystem().dataInputInputColorBgDisabled;
    } else if (enabled && readOnly) {
      return KvDesignSystem().dataInputInputColorBgReadOnly;
    }
    switch (inputState) {
      case KvInputState.idle:
        return KvDesignSystem().dataInputInputColorBgDefault;
      case KvInputState.focused:
        return KvDesignSystem().dataInputInputColorBgActivated;
      case KvInputState.focusedError:
        return KvDesignSystem().dataInputInputColorBgDefault;
      case KvInputState.error:
        return KvDesignSystem().dataInputInputColorBgDefault;
    }
  }

  TextStyle get contentStyle {
    Color color;
    if (!enabled) {
      color = KvDesignSystem().dataInputInputColorTextDisabled;
    } else if (readOnly) {
      color = KvDesignSystem().dataInputInputColorTextReadOnly;
    } else {
      color = KvDesignSystem().dataInputInputColorTextFilled;
    }
    return KvTextStyles.bodyMMe(color: color);
  }

  Widget? get label {
    if (decoration.labelText.isNullOrEmpty) {
      return null;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(decoration.labelText!),
        if (!decoration.secondaryLabelText.isNullOrEmpty) ...{
          Text(
            decoration.secondaryLabelText!,
            style: KvTextStyles.freeStyle(
              color: KvDesignSystem().colorTextDangerDefault,
            ),
          ),
        },
      ],
    );
  }

  TextStyle get labelStyle {
    return KvTextStyles.bodyMMe(
      color: enabled
          ? KvDesignSystem().dataInputInputColorTextPlaceholder
          : KvDesignSystem().dataInputInputColorTextDisabled,
    );
  }

  TextStyle get floatingLabelStyle {
    return KvTextStyles.freeStyle(
      height: 1.6,
      fontSize: 15.5,
      color: KvDesignSystem().colorTextNeutralLabel,
      fontWeight: FontWeight.w400,
    );
  }

  InputDecoration get materialInputDecoration {
    return InputDecoration(
      label: label,
      labelStyle: labelStyle,
      floatingLabelStyle: floatingLabelStyle,
      contentPadding: EdgeInsets.zero,
      errorBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
      enabled: enabled,
    );
  }
}
