import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_size.dart';
import 'kv_switch_theme_data.dart';

class KvSwitch extends StatelessWidget {
  const KvSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final switchThemeData = KvSwitchThemeData(
      value: value,
      enabled: enabled,
    );
    return GestureDetector(
      onTap: () {
        if (!enabled) {
          return;
        }
        onChanged.call(!value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: ShapeDecoration(
          color: switchThemeData.trackColor,
          shape: const StadiumBorder(),
        ),
        width: DTokens.sizeSize40,
        height: DTokens.sizeSize24,
        child: AnimatedAlign(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          duration: const Duration(milliseconds: 167),
          child: Container(
            decoration: BoxDecoration(
              color: switchThemeData.thumbColor,
              shape: BoxShape.circle,
            ),
            width: DTokens.sizeSize20,
            height: DTokens.sizeSize20,
          ),
        ),
      ),
    );
  }
}
