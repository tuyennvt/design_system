import 'package:flutter/material.dart';

import '../kv_design_system.dart';

enum KvIconSize {
  iconXXXS,
  iconXXS,
  iconXS,
  iconS,
  iconM,
  iconL,
  iconXL,
}

extension KvIconSizeExt on KvIconSize {
  double get value {
    switch (this) {
      case KvIconSize.iconXXXS:
        return KvDesignSystem().iconXXXSSize;
      case KvIconSize.iconXXS:
        return KvDesignSystem().iconXXSSize;
      case KvIconSize.iconXS:
        return KvDesignSystem().iconXSSize;
      case KvIconSize.iconS:
        return KvDesignSystem().iconSSize;
      case KvIconSize.iconM:
        return KvDesignSystem().iconMSize;
      case KvIconSize.iconL:
        return KvDesignSystem().iconLSize;
      case KvIconSize.iconXL:
        return KvDesignSystem().iconXLSize;
    }
  }
}

class KvIcon extends StatelessWidget {
  const KvIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = KvIconSize.iconS,
  });

  final IconData icon;
  final Color? color;
  final KvIconSize size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size.value,
      color: color,
    );
  }
}
