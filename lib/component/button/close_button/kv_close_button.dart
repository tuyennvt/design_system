import 'package:flutter/material.dart';

import '../../../foundation/kv_icon.dart';
import '../../../foundation/kv_icons.dart';
import '../../../kv_design_system.dart';
import '../../kv_minimum_tap_area.dart';
import '../kv_button.dart';

class KvCloseButton extends StatelessWidget implements KvButton {
  const KvCloseButton({
    super.key,
    this.onPressed,
    this.color,
    this.iconSize = KvIconSize.iconXS,
  });

  final VoidCallback? onPressed;
  final Color? color;
  final KvIconSize iconSize;

  @override
  Widget build(BuildContext context) {
    return KvMinimumTapArea(
      onTap: () => onPressed?.call(),
      child: KvIcon(
        icon: KvIcons.circle_xmark_regular,
        color: color ?? KvDesignSystem().iconNeutralPrimaryAction,
        size: iconSize,
      ),
    );
  }
}
