import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../kv_design_system.dart';

enum KvTextHeadlineStyle {
  neutral,
  success,
  danger,
  warning,
  info,
}

enum KvTextHeadlineSize {
  medium,
  large,
}

class KvTextHeadline extends StatelessWidget {
  const KvTextHeadline({
    super.key,
    required this.value,
    required this.unit,
    this.visibleValue = true,
    this.style = KvTextHeadlineStyle.neutral,
    this.size = KvTextHeadlineSize.medium,
  });

  final String value;
  final String unit;
  final bool visibleValue;
  final KvTextHeadlineStyle style;
  final KvTextHeadlineSize size;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: visibleValue ? value : '***',
        style: valueStyle,
        children: [
          TextSpan(
            text: ' $unit',
            style: KvTextStyles.captionME(
                color: KvDesignSystem().textNeutralTertiary),
          ),
        ],
      ),
    );
  }

  TextStyle get valueStyle {
    switch (size) {
      case KvTextHeadlineSize.medium:
        return KvTextStyles.headlineS(color: valueColor);
      case KvTextHeadlineSize.large:
        return KvTextStyles.headlineL(color: valueColor);
    }
  }

  Color get valueColor {
    switch (style) {
      case KvTextHeadlineStyle.neutral:
        return KvDesignSystem().textNeutralBase;
      case KvTextHeadlineStyle.success:
        return KvDesignSystem().textSuccessonWhiteTertiary;
      case KvTextHeadlineStyle.danger:
        return KvDesignSystem().textDangeronWhiteTertiary;
      case KvTextHeadlineStyle.warning:
        return KvDesignSystem().textWarningonWhiteTertiary;
      case KvTextHeadlineStyle.info:
        return KvDesignSystem().textInfoonWhiteTertiary;
    }
  }
}
