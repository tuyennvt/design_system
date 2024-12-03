import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import 'kv_circle_button_child.dart';

class KvCircleButton extends ButtonStyleButton implements KvButton {
  factory KvCircleButton({
    Key? key,
    KvCircleButtonStyle buttonStyle = KvCircleButtonStyle.text,
    KvCircleButtonSize buttonSize = KvCircleButtonSize.medium,
    KvCircleButtonVariant buttonVariant = KvCircleButtonVariant.neutral,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    MaterialStatesController? statesController,
    required IconData icon,
    KvBadge? badge,
    KvBadgeDot? badgeDot,
  }) {
    if (badge != null && badgeDot != null) {
      throw Exception('badge and badgeDot cannot be used at the same time');
    }
    return KvCircleButton._(
      key: key,
      buttonStyle: buttonStyle,
      buttonSize: buttonSize,
      buttonVariant: buttonVariant,
      icon: icon,
      badge: badge,
      badgeDot: badgeDot,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: KvCircleButtonChild(
        buttonStyle: buttonStyle,
        buttonSize: buttonSize,
        buttonVariant: buttonVariant,
        enabled: onPressed != null,
        icon: icon,
        badge: badge,
        badgeDot: badgeDot,
      ),
    );
  }

  const KvCircleButton._({
    required super.key,
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    required this.icon,
    this.badge,
    this.badgeDot,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  });

  final KvCircleButtonStyle buttonStyle;
  final KvCircleButtonSize buttonSize;
  final KvCircleButtonVariant buttonVariant;
  final IconData icon;
  final KvBadge? badge;
  final KvBadgeDot? badgeDot;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return KvCircleButtonThemeData(
      context,
      buttonStyle: buttonStyle,
      buttonSize: buttonSize,
      buttonVariant: buttonVariant,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return KvCircleButtonThemeData(
      context,
      buttonStyle: buttonStyle,
      buttonSize: buttonSize,
      buttonVariant: buttonVariant,
    );
  }
}
