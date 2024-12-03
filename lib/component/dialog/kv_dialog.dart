import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../utils.dart';
import '../button/close_button/kv_close_button.dart';

class KvDialog extends StatelessWidget {
  const KvDialog({
    super.key,
    this.title,
    this.onClosePressed,
    required this.content,
    required this.dialogAction,
  });

  final String? title;
  final VoidCallback? onClosePressed;
  final Widget content;
  final KvDialogAction dialogAction;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: DTokens.colorBgLayerLevel0,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: DTokens.sizeSize32,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: _borderRadius,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: DTokens.colorBgLayerLevel0,
          borderRadius: _borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (title.isNotNullOrEmpty) ...{
              _KvAppBarPopup(
                title: title!,
                onClosePressed: () {
                  onClosePressed?.call();
                },
              )
            },
            Padding(
              padding: contentPadding,
              child: content,
            ),
            dialogAction,
          ],
        ),
      ),
    );
  }

  static const BorderRadius _borderRadius = BorderRadius.all(
    Radius.circular(
      DTokens.sizeSize16,
    ),
  );

  EdgeInsets get contentPadding {
    return EdgeInsets.only(
      left: DTokens.sizeSize16,
      top: title.isNullOrEmpty ? DTokens.sizeSize20 : 0,
      right: DTokens.sizeSize16,
      bottom: 8,
    );
  }
}

class _KvAppBarPopup extends StatelessWidget {
  const _KvAppBarPopup({
    required this.title,
    required this.onClosePressed,
  });

  final String title;
  final VoidCallback onClosePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: DTokens.sizeSize56,
      child: Row(
        children: [
          const SizedBox(
            width: DTokens.sizeSize16,
          ),
          Expanded(
            child: Text(
              title,
              style: KvTextStyles.titleXL(),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          KvCloseButton(
            onPressed: onClosePressed,
          ),
          const SizedBox(
            width: DTokens.sizeSize16,
          ),
        ],
      ),
    );
  }
}
