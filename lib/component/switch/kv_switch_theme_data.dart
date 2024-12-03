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
      return DTokens.componentTokensToggleColorKnobEnabled;
    } else {
      if (value) {
        return DTokens.componentTokensToggleColorKnobDisabledOff;
      } else {
        return DTokens.componentTokensToggleColorKnobDisabledOn;
      }
    }
  }

  Color get trackColor {
    if (enabled) {
      if (value) {
        return DTokens.componentTokensToggleColorBgDefaultOn;
      } else {
        return DTokens.componentTokensToggleColorBgDefaultOff;
      }
    } else {
      if (value) {
        return DTokens.componentTokensToggleColorBgDisabledOn;
      } else {
        return DTokens.componentTokensToggleColorBgDisabledOff;
      }
    }
  }
}
