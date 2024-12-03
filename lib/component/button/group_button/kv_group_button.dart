import 'package:flutter/material.dart';

import '../../../style_dictionary/style_dictionary_size.dart';
import '../kv_button.dart';

enum KvGroupButtonType {
  vertical,
  horizontal,
}

class KvGroupButton extends StatelessWidget implements KvButton {
  const KvGroupButton({
    super.key,
    this.type = KvGroupButtonType.horizontal,
    required this.labelNegative,
    this.onNegativePressed,
    required this.labelPositive,
    this.onPositivePressed,
  });

  final KvGroupButtonType type;
  final String labelNegative;
  final VoidCallback? onNegativePressed;
  final String labelPositive;
  final VoidCallback? onPositivePressed;

  @override
  Widget build(BuildContext context) {
    final keyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;
    Widget child = type == KvGroupButtonType.horizontal
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            DTokens.sizeSize16,
            DTokens.sizeSize16,
            DTokens.sizeSize16,
            8,
          ),
          child: child,
        ),
        if (!keyboardVisible) ...{
          const SizedBox(height: 26),
        }
      ],
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
            buttonStyle: KvCommonButtonStyle.outlinedButton,
            onPressed: onNegativePressed,
            label: labelNegative,
          ),
        ),
        const SizedBox(width: 8.0),
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
          buttonStyle: KvCommonButtonStyle.outlinedButton,
          onPressed: onNegativePressed,
          label: labelNegative,
        ),
        const SizedBox(height: 8.0),
        KvCommonButton(
          onPressed: onPositivePressed,
          label: labelPositive,
        ),
      ],
    );
  }
}
