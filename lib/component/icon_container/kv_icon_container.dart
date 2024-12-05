import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

class KvIconContainer extends StatelessWidget {
  const KvIconContainer({
    super.key,
    this.size = KvIconContainerSize.medium,
    this.style = KvIconContainerStyle.neutral,
    required this.icon,
    this.onTap,
  });

  final KvIconContainerSize size;
  final KvIconContainerStyle style;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          shape: BoxShape.circle,
        ),
        constraints: theme.boxConstraints,
        child: KvIcon(
          icon: icon,
          color: theme.iconColor,
          size: KvIconSize.iconXS,
        ),
      ),
    );
  }

  KvIconContainerThemeData get theme => KvIconContainerThemeData(style, size);
}
