import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../generated/assets.dart';
import '../../../utils.dart';
import '../../input/base/kv_input_state.dart';

class KvMultiSelectBoxDecorator {
  KvMultiSelectBoxDecorator({
    required this.enabled,
    required this.readOnly,
    required this.inputState,
    required this.decoration,
  });

  final bool enabled;
  final bool readOnly;
  final KvInputState inputState;
  final KvMultiSelectBoxDecoration decoration;

  BorderRadius get borderRadius {
    return const BorderRadius.all(
      Radius.circular(8.0),
    );
  }

  Border get border {
    Color inputBorderColor;
    if (!enabled) {
      inputBorderColor =
          DTokens.dataInputInputColorBorderDisabled;
    } else if (enabled && readOnly) {
      inputBorderColor =
          DTokens.dataInputInputColorBorderDefault;
    } else {
      switch (inputState) {
        case KvInputState.idle:
          inputBorderColor =
              DTokens.dataInputInputColorBorderDefault;
          break;
        case KvInputState.focused:
          inputBorderColor =
              DTokens.dataInputInputColorBorderActivated;
          break;
        case KvInputState.focusedError:
          inputBorderColor =
              DTokens.dataInputInputColorBorderError;
          break;
        case KvInputState.error:
          inputBorderColor =
              DTokens.dataInputInputColorBorderError;
          break;
      }
    }
    return Border.all(color: inputBorderColor);
  }

  Widget get prefix {
    BoxConstraints constraints = decoration.prefixIconConstraints;
    if (decoration.assetPrefixIcon.isNotNullOrEmpty) {
      return Padding(
        padding: const EdgeInsets.only(right: DTokens.sizeSize16),
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
      return Padding(
        padding: const EdgeInsets.only(left: 4),
        child: ConstrainedBox(
          constraints: constraints,
          child: SvgPicture.asset(
            decoration.assetSuffixIcon!.value,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: suffixIconColor,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: KvIcon(
        assetIcon: KvSvgAsset(
          Assets.iconsChevronDown,
          assetPackage: packageRoot,
        ),
        color: suffixIconColor,
        size: KvIconSize.size16,
      ),
    );
  }

  EdgeInsets get padding {
    return const EdgeInsets.symmetric(horizontal: 16);
  }

  Color get prefixIconColor {
    if (enabled) {
      return DTokens.dataInputInputColorIconPrefix;
    }
    return DTokens.dataInputInputColorIconDisabled;
  }

  Color get suffixIconColor {
    if (enabled) {
      return DTokens.dataInputInputColorIconAction;
    }
    return DTokens.dataInputInputColorIconDisabled;
  }

  Color get backgroundColor {
    if (!enabled) {
      return DTokens.dataInputInputColorBgDisabled;
    } else if (enabled && readOnly) {
      return DTokens.dataInputInputColorBgReadOnly;
    }
    switch (inputState) {
      case KvInputState.idle:
        return DTokens.dataInputInputColorBgDefault;
      case KvInputState.focused:
        return DTokens.dataInputInputColorBgActivated;
      case KvInputState.focusedError:
        return DTokens.dataInputInputColorBgDefault;
      case KvInputState.error:
        return DTokens.dataInputInputColorBgDefault;
    }
  }

  TextStyle get valueStyle {
    Color color;
    if (!enabled) {
      color = DTokens.dataInputInputColorTextDisabled;
    } else if (readOnly) {
      color = DTokens.dataInputInputColorTextReadOnly;
    } else {
      color = DTokens.dataInputInputColorTextFilled;
    }
    return KvTextStyles.bodyMMe(color: color);
  }

  Widget get label {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          decoration.labelText,
        ),
        if (decoration.secondaryLabelText.isNotNullOrEmpty) ...{
          Text(
            decoration.secondaryLabelText!,
            style: const TextStyle(
              color: DTokens.colorTextDangerDefault,
            ),
          ),
        },
      ],
    );
  }

  TextStyle get labelStyle {
    return KvTextStyles.bodyMMe(
      color: enabled
          ? DTokens.dataInputInputColorTextPlaceholder
          : DTokens.dataInputInputColorTextDisabled,
    );
  }

  TextStyle get floatingLabelStyle {
    return KvTextStyles.cationRe(
      color: DTokens.colorTextNeutralLabel,
    );
  }
}
