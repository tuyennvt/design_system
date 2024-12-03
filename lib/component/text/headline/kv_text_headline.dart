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
        return DTokens.colorTextNeutralBase;
      case KvTextHeadlineStyle.success:
        return DTokens.colorTextSuccessOnwhiteTertiary;
      case KvTextHeadlineStyle.danger:
        return DTokens.colorTextDangerOnwhiteTertiary;
      case KvTextHeadlineStyle.warning:
        return DTokens.colorTextWarningOnwhiteTertiary;
      case KvTextHeadlineStyle.info:
        return DTokens.colorTextInfoOnwhiteTertiary;
    }
  }
}
