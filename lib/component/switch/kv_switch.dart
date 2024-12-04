import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import 'kv_switch_theme_data.dart';

class KvSwitch extends StatelessWidget {
  const KvSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final switchThemeData = KvSwitchThemeData(
      value: value,
      enabled: onChanged != null,
    );
    return GestureDetector(
      onTap: () => onChanged?.call(!value),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.all(KvDesignSystem().togglePadding),
        decoration: ShapeDecoration(
          color: switchThemeData.trackColor,
          shape: const StadiumBorder(),
        ),
        width: KvDesignSystem().toggleSizeBasicWidth,
        height: 26,
        child: AnimatedAlign(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          duration: const Duration(milliseconds: 167),
          child: Container(
            decoration: BoxDecoration(
              color: switchThemeData.thumbColor,
              shape: BoxShape.circle,
            ),
            width: KvDesignSystem().toggleSizeBasicKnob,
            height: KvDesignSystem().toggleSizeBasicKnob,
          ),
        ),
      ),
    );
  }
}
