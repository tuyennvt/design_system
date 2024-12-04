import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import '../kv_button.dart';

enum KvGroupButtonOrientation {
  vertical,
  horizontal,
}

class KvGroupButton extends StatelessWidget implements KvButton {
  const KvGroupButton({
    super.key,
    this.orientation = KvGroupButtonOrientation.horizontal,
    required this.labelNegative,
    this.onNegativePressed,
    required this.labelPositive,
    this.onPositivePressed,
  });

  final KvGroupButtonOrientation orientation;
  final String labelNegative;
  final VoidCallback? onNegativePressed;
  final String labelPositive;
  final VoidCallback? onPositivePressed;

  @override
  Widget build(BuildContext context) {
    final child = orientation == KvGroupButtonOrientation.horizontal
        ? _KvGroupButtonHorizontal(
            labelNegative: labelNegative,
            onNegativePressed: onNegativePressed,
            labelPositive: labelPositive,
            onPositivePressed: onPositivePressed,
          )
        : _KvGroupButtonVertical(
            labelNegative: labelNegative,
            onNegativePressed: onNegativePressed,
            labelPositive: labelPositive,
            onPositivePressed: onPositivePressed,
          );
    return Padding(
      padding: EdgeInsets.only(
        left: KvDesignSystem().buttonGroupPaddingLeft,
        top: KvDesignSystem().buttonGroupPaddingTop,
        right: KvDesignSystem().buttonGroupPaddingRight,
        bottom: KvDesignSystem().buttonGroupPaddingBottom,
      ),
      child: child,
    );
  }
}

class _KvGroupButtonHorizontal extends StatelessWidget {
  const _KvGroupButtonHorizontal({
    required this.labelNegative,
    this.onNegativePressed,
    required this.labelPositive,
    this.onPositivePressed,
  });

  final String labelNegative;
  final VoidCallback? onNegativePressed;
  final String labelPositive;
  final VoidCallback? onPositivePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: KvCommonButton(
            style: KvCommonButtonStyle.outlined,
            onPressed: onNegativePressed,
            label: labelNegative,
          ),
        ),
        SizedBox(width: KvDesignSystem().buttonGroupGutterHorizontal),
        Expanded(
          child: KvCommonButton(
            onPressed: onPositivePressed,
            label: labelPositive,
          ),
        )
      ],
    );
  }
}

class _KvGroupButtonVertical extends StatelessWidget {
  const _KvGroupButtonVertical({
    required this.labelNegative,
    this.onNegativePressed,
    required this.labelPositive,
    this.onPositivePressed,
  });

  final String labelNegative;
  final VoidCallback? onNegativePressed;
  final String labelPositive;
  final VoidCallback? onPositivePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        KvCommonButton(
          style: KvCommonButtonStyle.outlined,
          onPressed: onNegativePressed,
          label: labelNegative,
        ),
        SizedBox(height: KvDesignSystem().buttonGroupGutterVertical),
        KvCommonButton(
          onPressed: onPositivePressed,
          label: labelPositive,
        ),
      ],
    );
  }
}
