import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../utils.dart';
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
    this.badgeText,
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
  final String? badgeText;
  final bool selected;
  final bool enabled;
  final VoidCallback? onPressed;

  void _onTap() {
    if (!enabled) {
      return;
    }
    onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: _theme.padding,
        decoration: _theme.decoration,
        constraints: BoxConstraints(
          minWidth: size.minWidth,
          minHeight: size.height,
          maxHeight: size.height,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...{
              KvIcon(
                icon: prefixIcon!,
                color: _theme.prefixIconColor,
                size: _theme.iconSize,
              ),
            },
            _gutter,
            if (label.isNotNullOrEmpty) ...{
              Flexible(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: labelMaxWidth ?? double.infinity,
                  ),
                  child: Text(
                    label!,
                    style: _theme.labelStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
            },
            _gutter,
            if (badgeText.isNotNullOrEmpty) ...{
              KvBadge(
                size: _theme.badgeSize,
                enable: enabled,
                value: badgeText!,
              ),
            },
            _gutter,
            if (suffixIcon != null) ...{
              KvIcon(
                icon: suffixIcon!,
                color: _theme.suffixIconColor,
                size: _theme.iconSize,
              ),
            }
          ],
        ),
      ),
    );
  }

  KvChipThemeData get _theme => KvChipThemeData(
        size: size,
        category: category,
        style: style,
        selected: selected,
        enabled: enabled,
      );

  Widget get _gutter => SizedBox(width: _showGutter ? _theme.gutter : 0);

  bool get _showGutter {
    final conditions = [
      prefixIcon != null,
      label.isNotNullOrEmpty,
      badgeText.isNotNullOrEmpty,
      suffixIcon != null
    ];
    return conditions.where((condition) => condition).length > 1;
  }
}
