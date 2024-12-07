import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../utils.dart';
import '../button/close_button/kv_close_button.dart';

class KvDialog extends StatelessWidget {
  const KvDialog({
    super.key,
    this.title,
    this.onClosePressed,
    required this.content,
    this.divider = false,
    required this.dialogAction,
  });

  final String? title;
  final VoidCallback? onClosePressed;
  final Widget content;
  final bool divider;
  final KvDialogAction dialogAction;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: KvDesignSystem().bGLayerLevel0,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: Container(
        padding: EdgeInsets.only(
          top: KvDesignSystem().modalPaddingVerticalContainerTop,
        ),
        decoration: BoxDecoration(
          color: KvDesignSystem().bGLayerLevel0,
          borderRadius: borderRadius,
        ),
        child: SingleChildScrollView(
          child: IntrinsicWidth(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (title.isNotNullOrEmpty || onClosePressed != null) ...{
                  _KvHeaderDialog(
                    title: title ?? '',
                    onClosePressed: onClosePressed,
                  ),
                },
                Padding(padding: contentPadding, child: content),
                if (divider) ...{const KvDivider()},
                dialogAction,
              ],
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius get borderRadius {
    return BorderRadius.circular(KvDesignSystem().modalRadius);
  }

  EdgeInsets get contentPadding {
    return EdgeInsets.symmetric(
      vertical: KvDesignSystem().modalPaddingVerticalContent,
      horizontal: KvDesignSystem().modalPaddingHorizontal,
    );
  }
}

class _KvHeaderDialog extends StatelessWidget {
  const _KvHeaderDialog({
    required this.title,
    this.onClosePressed,
  });

  final String title;
  final VoidCallback? onClosePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: KvDesignSystem().modalPaddingHorizontal,
        top: KvDesignSystem().modalPaddingVerticalContent,
        right: KvDesignSystem().modalPaddingHorizontal,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: KvTextStyles.titleXL(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          if (onClosePressed != null) ...{
            KvCloseButton(
              onPressed: onClosePressed,
              iconSize: KvIconSize.iconS,
            ),
          },
        ],
      ),
    );
  }
}
