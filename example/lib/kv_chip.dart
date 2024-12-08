import 'package:flutter/material.dart';
import 'package:kv_design_system/foundation/kv_foundation.dart';
import 'package:kv_design_system/utils.dart';

import 'kv_chip_theme_data.dart';

class KvChip extends StatelessWidget {
  const KvChip({
    super.key,
    this.size = KvChipSize.large,
    this.category = KvChipCategory.filter,
    this.style = KvChipStyle.outline,
    this.label,
    this.labelMaxWidth,
    this.prefixIcon,
    this.suffixIcon,
    this.selected = false,
    this.enabled = true,
    this.onPressed,
  });

  final KvChipSize size;
  final KvChipCategory category;
  final KvChipStyle style;
  final String? label;
  final double? labelMaxWidth;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool selected;
  final bool enabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!enabled) {
          return;
        }
        onPressed?.call();
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        constraints: BoxConstraints(
          minHeight: size.height,
          maxHeight: size.height,
          minWidth: size.minWidth,
        ),
        decoration: theme.decoration,
        padding: theme.padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...{
              KvIcon(
                icon: prefixIcon!,
                color: theme.prefixIconColor,
                size: theme.iconSize,
              ),
            },
            if (prefixIcon != null && label.isNotNullOrEmpty) ...{
              SizedBox(width: theme.gutter),
            },
            if (label.isNotNullOrEmpty) ...{
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: labelMaxWidth ?? double.infinity,
                  ),
                  child: Text(
                    label!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.labelStyle,
                  ),
                ),
              ),
            },
            if (label.isNotNullOrEmpty && suffixIcon != null) ...{
              SizedBox(width: theme.gutter),
            },
            if (suffixIcon != null) ...{
              KvIcon(
                icon: suffixIcon!,
                color: theme.suffixIconColor,
                size: theme.iconSize,
              ),
            },
          ],
        ),
      ),
    );
  }

  KvChipThemeData get theme => KvChipThemeData(
        size: size,
        category: category,
        style: style,
        selected: selected,
        enabled: enabled,
      );
}
