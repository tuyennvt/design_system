import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

import 'kv_sheet_content.dart';
import 'kv_sheet_header.dart';

class KvSheet extends StatelessWidget {
  const KvSheet({
    super.key,
    this.header,
    required this.content,
    this.contentPaddingBottom = 0,
    this.cancelButton,
  });

  final KvSheetHeader? header;
  final KvSheetContent content;
  final double contentPaddingBottom;
  final KvCommonButton? cancelButton;

  static Future<T?> show<T>(BuildContext context) async {
    return showModalBottomSheet<T>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: _getBorderRadius(circular: false)
      ),
      builder: (context) {
        return KvSheet(
          header: KvSheetHeader(
            title: 'Title',
            onClosePressed: () {
              Navigator.pop(context);
            },
          ),
          content: KvSheetContent(
            padding: KvSheetContentPadding.all,
            child: Text('Abc'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final child = Container(
      padding: EdgeInsets.only(bottom: contentPaddingBottom),
      decoration: BoxDecoration(
        color: _designSystem.bGLayerLevel0,
        borderRadius: _borderRadius,
        boxShadow: [_boxShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (header != null) ...{
            header!,
          },
          content,
        ],
      ),
    );
    if (cancelButton == null) {
      return child;
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        child,
        SizedBox(height: _designSystem.gutterElementVertical),
        cancelButton!,
      ],
    );
  }

  BorderRadius get _borderRadius {
    if (cancelButton == null) {
      return BorderRadius.only(
        topLeft: Radius.circular(_designSystem.sheetRadius),
        topRight: Radius.circular(_designSystem.sheetRadius),
      );
    }
    return const BorderRadius.all(Radius.circular(12.0));
  }

  BoxShadow get _boxShadow => const BoxShadow(
        color: Color(0x0000000F),
        offset: Offset(0, -8),
        blurRadius: 20,
        spreadRadius: -4,
      );

  KvDesignSystem get _designSystem => KvDesignSystem();
}

BorderRadius _getBorderRadius({required bool circular}) {
  if (!circular) {
    return const BorderRadius.all(Radius.circular(12.0));
  }
  return BorderRadius.only(
    topLeft: Radius.circular(KvDesignSystem().sheetRadius),
    topRight: Radius.circular(KvDesignSystem().sheetRadius),
  );
}
