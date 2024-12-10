import 'package:flutter/material.dart';

import '../kv_component.dart';

class KvBadge extends StatelessWidget implements KvTextSupportWidget {
  const KvBadge({
    super.key,
    this.style = KvBadgeStyle.solid,
    this.variant = KvBadgeVariant.primary,
    this.size = KvBadgeSize.medium,
    this.enable = true,
    required this.value,
  });

  final KvBadgeSize size;
  final KvBadgeVariant variant;
  final KvBadgeStyle style;
  final bool enable;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: theme.shape == BoxShape.circle ? null : theme.padding,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: theme.border,
        borderRadius: theme.borderRadius,
        shape: theme.shape,
      ),
      constraints: theme.constraints,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: Text(
          value,
          style: theme.textStyle,
        ),
      ),
    );
  }

  KvBadgeThemeData get theme => KvBadgeThemeData(
        type: type,
        size: size,
        variant: variant,
        style: style,
        enable: enable,
      );

  KvBadgeType get type {
    if (value.length > 1) {
      return KvBadgeType.maxBadge;
    }
    return KvBadgeType.defaultBadge;
  }

  @override
  KvTextSupportWidgetType get supportWidgetType =>
      KvTextSupportWidgetType.badge;
}
