import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_color.dart';
import '../../style_dictionary/style_dictionary_components_sizes.dart';
import '../../style_dictionary/style_dictionary_size.dart';
import '../button/common_button/kv_common_button.dart';
import '../button/common_button/kv_common_button_theme_data.dart';

enum KvDialogActionType {
  actionDefault,
  actionVerticalDefault,
  actionHighest,
  confirmationDefault,
  confirmationHighest,
}

class KvDialogAction extends StatelessWidget {
  factory KvDialogAction.actionDefault({
    required String labelPositive,
    required VoidCallback onPositivePressed,
    required String labelNegative,
    required VoidCallback onNegativePressed,
  }) {
    return KvDialogAction._(
      actionType: KvDialogActionType.actionDefault,
      labelPrimary: labelPositive,
      onPrimaryPressed: onPositivePressed,
      labelSecondary: labelNegative,
      onSecondaryPressed: onNegativePressed,
    );
  }

  factory KvDialogAction.actionVerticalDefault({
    required String labelPositive,
    required VoidCallback onPositivePressed,
    required String labelNegative,
    required VoidCallback onNegativePressed,
  }) {
    return KvDialogAction._(
      actionType: KvDialogActionType.actionVerticalDefault,
      labelPrimary: labelPositive,
      onPrimaryPressed: onPositivePressed,
      labelSecondary: labelNegative,
      onSecondaryPressed: onNegativePressed,
    );
  }

  factory KvDialogAction.actionHighest({
    required String label,
    required VoidCallback onPressed,
  }) {
    return KvDialogAction._(
      actionType: KvDialogActionType.actionHighest,
      labelPrimary: label,
      onPrimaryPressed: onPressed,
    );
  }

  factory KvDialogAction.confirmationDefault({
    required String labelPositive,
    required VoidCallback onPositivePressed,
    required String labelNegative,
    required VoidCallback onNegativePressed,
  }) {
    return KvDialogAction._(
      actionType: KvDialogActionType.confirmationDefault,
      labelPrimary: labelPositive,
      onPrimaryPressed: onPositivePressed,
      labelSecondary: labelNegative,
      onSecondaryPressed: onNegativePressed,
    );
  }

  factory KvDialogAction.confirmationHighest({
    required String label,
    required VoidCallback onPressed,
  }) {
    return KvDialogAction._(
      actionType: KvDialogActionType.confirmationHighest,
      labelPrimary: label,
      onPrimaryPressed: onPressed,
    );
  }

  const KvDialogAction._({
    required this.actionType,
    required this.labelPrimary,
    required this.onPrimaryPressed,
    this.labelSecondary,
    this.onSecondaryPressed,
  });

  final KvDialogActionType actionType;
  final String labelPrimary;
  final VoidCallback onPrimaryPressed;
  final String? labelSecondary;
  final VoidCallback? onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    switch (actionType) {
      case KvDialogActionType.actionDefault:
        return _DialogActionDefault(
          labelPrimary: labelPrimary,
          onPrimaryPressed: onPrimaryPressed,
          labelSecondary: labelSecondary!,
          onSecondaryPressed: onSecondaryPressed!,
        );
      case KvDialogActionType.actionVerticalDefault:
        return _DialogActionVerticalDefault(
          labelPrimary: labelPrimary,
          onPrimaryPressed: onPrimaryPressed,
          labelSecondary: labelSecondary!,
          onSecondaryPressed: onSecondaryPressed!,
        );

      case KvDialogActionType.actionHighest:
        return _DialogActionHighest(
          label: labelPrimary,
          onPressed: onPrimaryPressed,
        );

      case KvDialogActionType.confirmationDefault:
        return _DialogConfirmationDefault(
          labelPrimary: labelPrimary,
          onPrimaryPressed: onPrimaryPressed,
          labelSecondary: labelSecondary!,
          onSecondaryPressed: onSecondaryPressed!,
        );

      case KvDialogActionType.confirmationHighest:
        return _DialogConfirmationHighest(
          label: labelPrimary,
          onPressed: onPrimaryPressed,
        );
    }
  }
}

class _DialogActionDefault extends StatelessWidget {
  const _DialogActionDefault({
    required this.labelPrimary,
    required this.onPrimaryPressed,
    required this.labelSecondary,
    required this.onSecondaryPressed,
  });

  final String labelPrimary;
  final VoidCallback onPrimaryPressed;
  final String labelSecondary;
  final VoidCallback onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        DTokens.sizeSize16,
        8,
        DTokens.sizeSize16,
        DTokens.sizeSize16,
      ),
      child: Row(
        children: [
          Expanded(
            child: KvCommonButton(
              buttonStyle: KvCommonButtonStyle.outlinedButton,
              buttonSize: KvCommonButtonSize.medium,
              buttonVariant: KvCommonButtonVariant.neutral,
              onPressed: onSecondaryPressed,
              label: labelSecondary,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: KvCommonButton(
              buttonSize: KvCommonButtonSize.medium,
              onPressed: onPrimaryPressed,
              label: labelPrimary,
            ),
          )
        ],
      ),
    );
  }
}

class _DialogActionVerticalDefault extends StatelessWidget {
  const _DialogActionVerticalDefault({
    required this.labelPrimary,
    required this.onPrimaryPressed,
    required this.labelSecondary,
    required this.onSecondaryPressed,
  });

  final String labelPrimary;
  final VoidCallback onPrimaryPressed;
  final String labelSecondary;
  final VoidCallback onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        DTokens.sizeSize16,
        8,
        DTokens.sizeSize16,
        DTokens.sizeSize16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          KvCommonButton(
            buttonStyle: KvCommonButtonStyle.outlinedButton,
            buttonSize: KvCommonButtonSize.medium,
            buttonVariant: KvCommonButtonVariant.neutral,
            onPressed: onSecondaryPressed,
            label: labelSecondary,
          ),
          const SizedBox(height: 8),
          KvCommonButton(
            buttonSize: KvCommonButtonSize.medium,
            onPressed: onPrimaryPressed,
            label: labelPrimary,
          )
        ],
      ),
    );
  }
}

class _DialogActionHighest extends StatelessWidget {
  const _DialogActionHighest({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        DTokens.sizeSize16,
        8,
        DTokens.sizeSize16,
        DTokens.sizeSize16,
      ),
      child: KvCommonButton(
        buttonStyle: KvCommonButtonStyle.outlinedButton,
        buttonSize: KvCommonButtonSize.medium,
        buttonVariant: KvCommonButtonVariant.neutral,
        onPressed: onPressed,
        label: label,
      ),
    );
  }
}

class _DialogConfirmationDefault extends StatelessWidget {
  const _DialogConfirmationDefault({
    required this.labelPrimary,
    required this.onPrimaryPressed,
    required this.labelSecondary,
    required this.onSecondaryPressed,
  });

  final String labelPrimary;
  final VoidCallback onPrimaryPressed;
  final String labelSecondary;
  final VoidCallback onSecondaryPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: DTokens.colorDividerBlock,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: KvCommonButton(
                buttonStyle: KvCommonButtonStyle.textButton,
                buttonVariant: KvCommonButtonVariant.neutral,
                onPressed: onSecondaryPressed,
                label: labelSecondary,
              ),
            ),
          ),
          Container(
            color: DTokens.colorDividerBlock,
            width: 1,
            height: DTokens.commonButtonSizeL,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: KvCommonButton(
                buttonStyle: KvCommonButtonStyle.textButton,
                onPressed: onPrimaryPressed,
                label: labelPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DialogConfirmationHighest extends StatelessWidget {
  const _DialogConfirmationHighest({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return KvCommonButton(
      buttonStyle: KvCommonButtonStyle.textButton,
      onPressed: onPressed,
      label: label,
    );
  }
}
