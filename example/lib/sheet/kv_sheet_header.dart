import 'package:flutter/material.dart';
import 'package:kv_design_system/component/button/close_button/kv_close_button.dart';
import 'package:kv_design_system/kv_design_system.dart';

class KvSheetHeader extends StatelessWidget {
  const KvSheetHeader({
    super.key,
    this.title,
    this.actionButton,
    this.onClosePressed,
    this.subHeader,
  });

  final String? title;
  final KvInlineButton? actionButton;
  final VoidCallback? onClosePressed;
  final Widget? subHeader;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        _HeaderContent(
          title: title,
          actionButton: actionButton,
          onClosePressed: onClosePressed,
        ),
        if (subHeader != null) ...{
          _SubHeader(child: subHeader!),
        },
      ],
    );
  }
}

class _HeaderContent extends StatelessWidget {
  const _HeaderContent({
    this.title,
    this.actionButton,
    this.onClosePressed,
  });

  final String? title;
  final KvInlineButton? actionButton;
  final VoidCallback? onClosePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: _designSystem.sheetPaddingHeaderTop,
        top: _designSystem.sheetPaddingContentHorizontal,
        right: _designSystem.sheetPaddingContentHorizontal,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title ?? '',
              style: KvTextStyles.titleXL(),
            ),
          ),
          if (actionButton != null) ...{
            SizedBox(width: _designSystem.gutterElementHorizontal),
            actionButton!
          },
          if (onClosePressed != null) ...{
            SizedBox(width: _designSystem.gutterElementHorizontal),
            KvCloseButton(
              onPressed: onClosePressed,
              iconSize: KvIconSize.iconS,
            ),
          }
        ],
      ),
    );
  }

  KvDesignSystem get _designSystem => KvDesignSystem();
}

class _SubHeader extends StatelessWidget {
  const _SubHeader({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: _designSystem.paddingContainer,
        top: _designSystem.paddingContainer,
        right: _designSystem.paddingContainer,
      ),
      child: child,
    );
  }

  KvDesignSystem get _designSystem => KvDesignSystem();
}
