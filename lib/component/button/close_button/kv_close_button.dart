import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../foundation/d_tokens.dart';
import '../../../foundation/kv_icons.dart';

class KvCloseButton extends StatelessWidget implements KvButton {
  const KvCloseButton({
    super.key,
    this.onPressed,
    this.color = DTokens.iconNeutralPrimaryAction,
  });

  final VoidCallback? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return KvMinimumTapArea(
      onTap: () => onPressed?.call(),
      child: KvIcon(
        icon: KvIcons.circle_xmark_regular,
        color: color,
        size: KvIconSize.iconXS,
      ),
    );
  }
}
