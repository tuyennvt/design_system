import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';

class KvCircleButtonChild extends StatefulWidget {
  const KvCircleButtonChild({
    super.key,
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    required this.enabled,
    required this.icon,
    this.badge,
    this.badgeDot,
  });

  final KvCircleButtonStyle buttonStyle;
  final KvCircleButtonSize buttonSize;
  final KvCircleButtonVariant buttonVariant;
  final bool enabled;
  final IconData icon;
  final KvBadge? badge;
  final KvBadgeDot? badgeDot;

  @override
  State<KvCircleButtonChild> createState() => _KvCircleButtonChildState();
}

class _KvCircleButtonChildState extends State<KvCircleButtonChild> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        KvIcon(
          icon: widget.icon,
          color: theme.getIconColor(widget.enabled),
          size: theme.kvIconSize,
        ),
        if (widget.badge != null) ...{
          Positioned(
            left: leftPositionBadge,
            top: topPositionBadge,
            child: KvBadge(
              variant: widget.badge!.variant,
              size: KvBadgeSize.small,
              enable: widget.enabled,
              value: widget.badge!.value,
            ),
          ),
        },
        if (widget.badgeDot != null) ...{
          Positioned(
            left: leftPositionBadgeDot,
            child: KvBadgeDot(
              status: widget.badgeDot!.status,
            ),
          ),
        },
      ],
    );
  }

  KvCircleButtonThemeData get theme => KvCircleButtonThemeData(
        context,
        buttonStyle: widget.buttonStyle,
        buttonSize: widget.buttonSize,
        buttonVariant: widget.buttonVariant,
      );

  double get leftPositionBadge {
    switch (widget.buttonSize) {
      case KvCircleButtonSize.xSmall:
        return 7;
      case KvCircleButtonSize.small:
        return 9;
      case KvCircleButtonSize.medium:
        return 11;
      case KvCircleButtonSize.large:
        return 13;
      case KvCircleButtonSize.xLarge:
        return 15;
    }
  }

  double get topPositionBadge {
    switch (widget.buttonSize) {
      case KvCircleButtonSize.xSmall:
        return -11;
      case KvCircleButtonSize.small:
        return -9;
      case KvCircleButtonSize.medium:
        return -7;
      case KvCircleButtonSize.large:
        return -5;
      case KvCircleButtonSize.xLarge:
        return -3;
    }
  }

  double get leftPositionBadgeDot {
    switch (widget.buttonSize) {
      case KvCircleButtonSize.xSmall:
        return 6;
      case KvCircleButtonSize.small:
        return 10;
      case KvCircleButtonSize.medium:
        return 12;
      case KvCircleButtonSize.large:
        return 16;
      case KvCircleButtonSize.xLarge:
        return 18;
    }
  }
}
