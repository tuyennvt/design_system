import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_components_color.dart';

class KvSwitchThemeData {
  const KvSwitchThemeData({
    required this.value,
    required this.enabled,
  });

  final bool value;
  final bool enabled;

  Color get thumbColor {
    if (enabled) {
      return KvDesignSystem().componentTokensToggleColorKnobEnabled;
    } else {
      if (value) {
        return KvDesignSystem().componentTokensToggleColorKnobDisabledOff;
      } else {
        return KvDesignSystem().componentTokensToggleColorKnobDisabledOn;
      }
    }
  }

  Color get trackColor {
    if (enabled) {
      if (value) {
        return KvDesignSystem().componentTokensToggleColorBgDefaultOn;
      } else {
        return KvDesignSystem().componentTokensToggleColorBgDefaultOff;
      }
    } else {
      if (value) {
        return KvDesignSystem().componentTokensToggleColorBgDisabledOn;
      } else {
        return KvDesignSystem().componentTokensToggleColorBgDisabledOff;
      }
    }
  }
}
