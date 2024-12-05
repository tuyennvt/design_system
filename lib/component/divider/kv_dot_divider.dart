import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../kv_design_system.dart';

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
        return KvTextStyles.labelS(color: KvDesignSystem().dividerDot);
      case KvDotDividerSize.medium:
        return KvTextStyles.labelM(color: KvDesignSystem().dividerDot);
      case KvDotDividerSize.large:
        return KvTextStyles.labelL(color: KvDesignSystem().dividerDot);
    }
  }
}
