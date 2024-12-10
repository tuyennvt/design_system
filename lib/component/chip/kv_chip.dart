import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../utils.dart';

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
          children: _children.joinWidget(_gutter),
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

  Widget get _gutter => SizedBox(width: _theme.gutter);

  List<Widget> get _children {
    final children = <Widget>[];
    if (prefixIcon != null) {
      children.add(
        KvIcon(
          icon: prefixIcon!,
          color: _theme.prefixIconColor,
          size: _theme.iconSize,
        ),
      );
    }

    if (label.isNotNullOrEmpty) {
      children.add(
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
      );
    }

    if (badgeText.isNotNullOrEmpty) {
      children.add(
        KvBadge(
          size: _theme.badgeSize,
          enable: enabled,
          value: badgeText!,
        ),
      );
    }

    if (suffixIcon != null) {
      children.add(
        KvIcon(
          icon: suffixIcon!,
          color: _theme.suffixIconColor,
          size: _theme.iconSize,
        ),
      );
    }

    return children;
  }
}
