import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

enum KvSheetContentPadding {
  none,
  all,
  vertical,
  horizontal,
}

class KvSheetContent extends StatelessWidget {
  const KvSheetContent({
    super.key,
    required this.padding,
    required this.child,
  });

  final KvSheetContentPadding padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: child,
    );
  }

  EdgeInsets get _padding {
    switch (padding) {
      case KvSheetContentPadding.none:
        return EdgeInsets.zero;
      case KvSheetContentPadding.all:
        return EdgeInsets.all(_designSystem.paddingContainer);
      case KvSheetContentPadding.vertical:
        return EdgeInsets.symmetric(vertical: _designSystem.paddingContainer);
      case KvSheetContentPadding.horizontal:
        return EdgeInsets.symmetric(horizontal: _designSystem.paddingContainer);
    }
  }

  KvDesignSystem get _designSystem => KvDesignSystem();
}
