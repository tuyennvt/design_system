import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../utils.dart';

class KvTextSelectorContent extends StatelessWidget {
  const KvTextSelectorContent({
    super.key,
    this.placeholder,
    this.value,
    this.onPressed,
  });

  final String? placeholder;
  final String? value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }

  String get text {
    if (value.isNotNullOrEmpty) {
      return value!;
    } else {
      return placeholder ?? 'Placeholder';
    }
  }

  TextStyle get textStyle {
    if (value.isNotNullOrEmpty) {
      return KvTextStyles.bodyMMe(color: textColor);
    } else {
      return KvTextStyles.bodyMRE(color: textColor);
    }
  }

  Color get textColor {
    if (value.isNotNullOrEmpty) {
      return KvDesignSystem().colorTextNeutralBase;
    } else {
      return KvDesignSystem().colorTextNeutralPlaceholder;
    }
  }
}
