import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

class KvSwitchThemeData {
  const KvSwitchThemeData({
    required this.value,
    required this.enabled,
  });

  final bool value;
  final bool enabled;

  Color get thumbColor {
    if (enabled) {
      return KvDesignSystem().toggleColorKnobEnable;
    } else {
      if (value) {
        return KvDesignSystem().toggleColorKnobDisabledSelected;
      } else {
        return KvDesignSystem().toggleColorKnobDisabledUnSelected;
      }
    }
  }

  Color get trackColor {
    if (enabled) {
      if (value) {
        return KvDesignSystem().toggleColorBGSelectedDefault;
      } else {
        return KvDesignSystem().toggleColorBGUnselectedDefault;
      }
    } else {
      if (value) {
        return KvDesignSystem().toggleColorBGSelectedDisabled;
      } else {
        return KvDesignSystem().toggleColorBGUnselectedDisabled;
      }
    }
  }
}
