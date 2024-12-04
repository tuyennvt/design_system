import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/kv_icons.dart';

class KvTag extends StatelessWidget implements KvTextSupportWidget {
  const KvTag({
    super.key,
    this.size = KvTagSize.medium,
    this.variant = KvTagVariant.neutral,
    this.style = KvTagStyle.faded,
    required this.label,
    this.prefixIcon,
    this.onClearPressed,
    this.onSelectPressed,
  }) : assert(
          !(onClearPressed != null && onSelectPressed != null),
          'onClearPressed and onSelectPressed cannot be used at the same time',
        );

  final KvTagSize size;
  final KvTagVariant variant;
  final KvTagStyle style;
  final String label;
  final IconData? prefixIcon;
  final VoidCallback? onClearPressed;
  final VoidCallback? onSelectPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: theme.padding,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: theme.border,
        borderRadius: theme.borderRadius,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...{
            KvIcon(
              icon: prefixIcon!,
              color: theme.prefixIconColor,
              size: theme.prefixIconSize,
            ),
            SizedBox(width: theme.gutter),
          },
          Flexible(
            child: Text(
              label,
              style: theme.labelStyle,
            ),
          ),
          if (suffixIcon != null) ...{
            SizedBox(width: theme.gutter),
            KvMinimumTapArea(
              onTap: () {
                if (onClearPressed != null) {
                  onClearPressed!.call();
                } else if (onSelectPressed != null) {
                  onSelectPressed!.call();
                }
              },
              child: suffixIcon!,
            ),
          },
        ],
      ),
    );
  }

  KvTagThemeData get theme => KvTagThemeData(
        size: size,
        variant: variant,
        style: style,
      );

  KvIcon? get suffixIcon {
    if (onClearPressed == null && onSelectPressed == null) {
      return null;
    }
    return KvIcon(
      icon: onClearPressed != null
          ? KvIcons.xmark_regular
          : KvIcons.angle_down_regular,
      color: theme.suffixIconColor,
      size: theme.suffixIconSize,
    );
  }

  @override
  KvTextSupportWidgetType get supportWidgetType => KvTextSupportWidgetType.tag;
}
