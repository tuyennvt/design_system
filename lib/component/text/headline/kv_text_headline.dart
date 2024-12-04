import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

enum KvTextHeadlineStyle {
  neutral,
  success,
  danger,
  warning,
  info,
}

class KvTextHeadline extends StatelessWidget {
  const KvTextHeadline({
    super.key,
    required this.value,
    required this.unit,
    this.visibleValue = true,
    this.style = KvTextHeadlineStyle.neutral,
  });

  final String value;
  final String unit;
  final bool visibleValue;
  final KvTextHeadlineStyle style;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: visibleValue ? value : '***',
        style: KvTextStyles.headlineL(color: valueColor),
        children: [
          TextSpan(
            text: ' $unit',
            style: KvTextStyles.labelM(),
          ),
        ],
      ),
    );
  }

  Color get valueColor {
    switch (style) {
      case KvTextHeadlineStyle.neutral:
        return KvDesignSystem().colorTextNeutralBase;
      case KvTextHeadlineStyle.success:
        return KvDesignSystem().colorTextSuccessOnwhiteTertiary;
      case KvTextHeadlineStyle.danger:
        return KvDesignSystem().colorTextDangerOnwhiteTertiary;
      case KvTextHeadlineStyle.warning:
        return KvDesignSystem().colorTextWarningOnwhiteTertiary;
      case KvTextHeadlineStyle.info:
        return KvDesignSystem().colorTextInfoOnwhiteTertiary;
    }
  }
}
