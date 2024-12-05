import 'package:flutter/material.dart';

import '../../../foundation/kv_text_styles.dart';
import '../../../kv_design_system.dart';

class KvTextHelperDescription extends StatelessWidget {
  const KvTextHelperDescription({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: KvTextStyles.captionRE(
        color: color ?? KvDesignSystem().textNeutralSecondary,
      ),
    );
  }
}
