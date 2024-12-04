import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvInlineButton extends StatelessWidget implements KvButton {
  const KvInlineButton({
    super.key,
    this.buttonSize = KvInlineButtonSize.medium,
    this.buttonVariant = KvInlineButtonVariant.primary,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    required this.onPressed,
  });

  final KvInlineButtonSize buttonSize;
  final KvInlineButtonVariant buttonVariant;
  final String text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...{
            KvIcon(
              icon: prefixIcon!,
              color: theme.iconColor,
              size: theme.iconSize,
            ),
            SizedBox(width: theme.gutter),
          },
          Text(
            text,
            style: theme.textStyle,
          ),
          if (suffixIcon != null) ...{
            SizedBox(width: theme.gutter),
            KvIcon(
              icon: suffixIcon!,
              color: theme.iconColor,
              size: theme.iconSize,
            ),
          },
        ],
      ),
    );
  }

  KvInlineButtonThemeData get theme => KvInlineButtonThemeData(
        buttonSize: buttonSize,
        buttonVariant: buttonVariant,
        enabled: onPressed != null,
      );
}
