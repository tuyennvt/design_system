import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

enum KvSwipeStyle {
  white,
  primary,
}

class KvSwipeThemeData {
  KvSwipeThemeData({required this.style});

  final KvSwipeStyle style;

  KvDesignSystem get _designSystem => KvDesignSystem();

  Color get bgColor => const Color(0xFFF0F1F3);

  Color get anchorBgColor {
    switch (style) {
      case KvSwipeStyle.white:
        return const Color(0xFFFFFFFF);
      case KvSwipeStyle.primary:
        return _designSystem.primary500;
    }
  }

  Color get labelColor => _designSystem.swipeColorTextDefault;

  Color get anchorLabelColor {
    switch (style) {
      case KvSwipeStyle.white:
        return _designSystem.swipeColorTextSelectedWhite;
      case KvSwipeStyle.primary:
        return _designSystem.swipeColorTextSelectedPrimary;
    }
  }

  BorderRadius get borderRadius =>
      BorderRadius.circular(_designSystem.swipeRadiusOutside);

  BorderRadius get anchorBorderRadius =>
      BorderRadius.circular(_designSystem.swipeRadiusInside);

  EdgeInsets get padding => EdgeInsets.all(_designSystem.swipePaddingContainer);

  double get height => _designSystem.swipeSizeContainer;

  double get dividerPadding => _designSystem.swipePaddingDivider;

  Color get dividerColor => _designSystem.swipeColorDivider;

  TextStyle get labelStyle => KvTextStyles.labelM(color: labelColor);

  TextStyle get anchorLabelStyle =>
      KvTextStyles.labelM(color: anchorLabelColor);
}
