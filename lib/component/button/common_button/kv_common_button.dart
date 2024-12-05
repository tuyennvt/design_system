import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import 'kv_common_button_child.dart';

class KvCommonButton extends ButtonStyleButton implements KvButton {
  factory KvCommonButton({
    Key? key,
    KvCommonButtonStyle style = KvCommonButtonStyle.solid,
    KvCommonButtonSize size = KvCommonButtonSize.large,
    KvCommonButtonVariant variant = KvCommonButtonVariant.primary,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    MaterialStatesController? statesController,
    String? label,
    IconData? icon,
    String? badgeText,
  }) {
    return KvCommonButton._(
      key: key,
      buttonStyle: style,
      buttonSize: size,
      buttonVariant: variant,
      label: label,
      icon: icon,
      badgeText: badgeText,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: KvCommonButtonChild(
        buttonStyle: style,
        buttonSize: size,
        buttonVariant: variant,
        enabled: onPressed != null,
        label: label,
        icon: icon,
        badgeText: badgeText,
      ),
    );
  }

  const KvCommonButton._({
    required super.key,
    required this.buttonStyle,
    required this.buttonSize,
    required this.buttonVariant,
    this.label,
    this.icon,
    this.badgeText,
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

  final KvCommonButtonStyle buttonStyle;
  final KvCommonButtonSize buttonSize;
  final KvCommonButtonVariant buttonVariant;
  final String? label;
  final IconData? icon;
  final String? badgeText;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return KvCommonButtonThemeData(
      context,
      buttonStyle: buttonStyle,
      buttonSize: buttonSize,
      buttonVariant: buttonVariant,
      label: label,
      icon: icon,
      badgeText: badgeText,
    );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return KvCommonButtonThemeData(
      context,
      buttonStyle: buttonStyle,
      buttonSize: buttonSize,
      buttonVariant: buttonVariant,
      label: label,
      icon: icon,
      badgeText: badgeText,
    );
  }
}
