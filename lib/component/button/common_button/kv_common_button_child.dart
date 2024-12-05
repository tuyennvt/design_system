import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import '../../../utils.dart';

class KvCommonButtonChild extends StatefulWidget {
  const KvCommonButtonChild({
    super.key,
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    this.enabled = true,
    this.label,
    this.icon,
    this.badgeText,
  });

  final KvCommonButtonStyle buttonStyle;
  final KvCommonButtonSize buttonSize;
  final KvCommonButtonVariant buttonVariant;
  final bool enabled;
  final String? label;
  final IconData? icon;
  final String? badgeText;

  @override
  State<KvCommonButtonChild> createState() => _KvCommonButtonChildState();
}

class _KvCommonButtonChildState extends State<KvCommonButtonChild> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.icon != null) ...{
          _Icon(
            icon: widget.icon!,
            buttonSize: widget.buttonSize,
            enabled: widget.enabled,
            theme: theme,
          ),
        },
        if (widget.icon != null && widget.label.isNotNullOrEmpty) ...{
          SizedBox(width: theme.gutter),
        },
        if (widget.label.isNotNullOrEmpty) ...{
          Text(widget.label!),
        },
        if (widget.badgeText.isNotNullOrEmpty &&
            (widget.label.isNotNullOrEmpty || widget.icon != null)) ...{
          SizedBox(width: theme.gutter),
        },
        if (widget.badgeText.isNotNullOrEmpty) ...{
          _Badge(
            badgeText: widget.badgeText!,
            enabled: widget.enabled,
            theme: theme,
          ),
        }
      ],
    );
  }

  KvCommonButtonThemeData get theme => KvCommonButtonThemeData(
        context,
        buttonStyle: widget.buttonStyle,
        buttonSize: widget.buttonSize,
        buttonVariant: widget.buttonVariant,
        label: widget.label,
        icon: widget.icon,
        badgeText: widget.badgeText,
      );
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.badgeText,
    required this.enabled,
    required this.theme,
  });

  final String badgeText;
  final bool enabled;
  final KvCommonButtonThemeData theme;

  @override
  Widget build(BuildContext context) {
    return KvBadge(
      style: theme.badgeStyle,
      variant: theme.badgeVariant,
      size: theme.badgeSize,
      enable: enabled,
      value: badgeText,
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    required this.icon,
    required this.buttonSize,
    required this.enabled,
    required this.theme,
  });

  final IconData icon;
  final KvCommonButtonSize buttonSize;
  final bool enabled;
  final KvCommonButtonThemeData theme;

  @override
  Widget build(BuildContext context) {
    return KvIcon(
      icon: icon,
      color: theme.getIconColor(enabled),
      size: iconSize,
    );
  }

  KvIconSize get iconSize {
    switch (buttonSize) {
      case KvCommonButtonSize.xSmall:
        return KvIconSize.iconXS;
      case KvCommonButtonSize.small:
        return KvIconSize.iconS;
      case KvCommonButtonSize.medium:
        return KvIconSize.iconM;
      case KvCommonButtonSize.large:
        return KvIconSize.iconL;
      case KvCommonButtonSize.xLarge:
        return KvIconSize.iconXL;
    }
  }
}
