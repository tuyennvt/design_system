import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvDotDividerSize {
  small,
  medium,
  large,
}

class KvDotDivider extends StatelessWidget {
  const KvDotDivider({
    super.key,
    this.size = KvDotDividerSize.medium,
  });

  final KvDotDividerSize size;

  @override
  Widget build(BuildContext context) {
    return Text(
      '•',
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }

  TextStyle get textStyle {
    switch (size) {
      case KvDotDividerSize.small:
        return KvTextStyles.labelS(color: DTokens.colorDividerDot);
      case KvDotDividerSize.medium:
        return KvTextStyles.labelM(color: DTokens.colorDividerDot);
      case KvDotDividerSize.large:
        return KvTextStyles.labelL(color: DTokens.colorDividerDot);
    }
  }
}
