import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../utils.dart';
import '../button/common_button/kv_common_button.dart';
import '../button/common_button/kv_common_button_theme_data.dart';

enum KvDialogActionOrientation {
  vertical,
  horizontal,
}

class KvDialogAction extends StatelessWidget {
  const KvDialogAction({
    super.key,
    this.orientation = KvDialogActionOrientation.horizontal,
    required this.primaryLabel,
    this.onPrimaryPressed,
    this.secondaryLabel,
    this.onSecondaryPressed,
  });

  final KvDialogActionOrientation orientation;
  final String primaryLabel;
  final VoidCallback? onPrimaryPressed;
  final String? secondaryLabel;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (secondaryLabel.isNullOrEmpty) {
      child = _SingleAction(
        label: primaryLabel,
        onPressed: onPrimaryPressed,
      );
    } else {
      child = _DoubleAction(
        orientation: orientation,
        primaryLabel: primaryLabel,
        onPrimaryPressed: onPrimaryPressed,
        secondaryLabel: secondaryLabel!,
        onSecondaryPressed: onSecondaryPressed,
      );
    }
    return Padding(
      padding: EdgeInsets.only(
        left: KvDesignSystem().paddingContainer,
        top: KvDesignSystem().modalPaddingVerticalContainerTop,
        right: KvDesignSystem().paddingContainer,
        bottom: KvDesignSystem().modalPaddingFooterVerticalBottom,
      ),
      child: child,
    );
  }
}

class _SingleAction extends StatelessWidget {
  const _SingleAction({
    required this.label,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return KvCommonButton(
      size: KvCommonButtonSize.medium,
      onPressed: onPressed,
      label: label,
    );
  }
}

class _DoubleAction extends StatelessWidget {
  const _DoubleAction({
    required this.orientation,
    required this.primaryLabel,
    this.onPrimaryPressed,
    required this.secondaryLabel,
    this.onSecondaryPressed,
  });

  final KvDialogActionOrientation orientation;
  final String primaryLabel;
  final VoidCallback? onPrimaryPressed;
  final String secondaryLabel;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    final primaryAction = KvCommonButton(
      size: KvCommonButtonSize.medium,
      onPressed: onPrimaryPressed,
      label: primaryLabel,
    );
    final secondaryAction = KvCommonButton(
      style: KvCommonButtonStyle.outlined,
      size: KvCommonButtonSize.medium,
      variant: KvCommonButtonVariant.neutral,
      onPressed: onSecondaryPressed,
      label: secondaryLabel,
    );
    switch (orientation) {
      case KvDialogActionOrientation.vertical:
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            primaryAction,
            SizedBox(height: KvDesignSystem().gutterElementHorizontal),
            secondaryAction,
          ],
        );
      case KvDialogActionOrientation.horizontal:
        return Row(
          children: [
            Expanded(child: primaryAction),
            SizedBox(width: KvDesignSystem().gutterElementHorizontal),
            Expanded(child: secondaryAction),
          ],
        );
        break;
    }
  }
}
