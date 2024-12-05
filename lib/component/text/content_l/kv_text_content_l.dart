import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import '../../../kv_design_system.dart';

class KvTextContentL extends StatelessWidget {
  const KvTextContentL({
    super.key,
    required this.content,
    this.color,
  });

  final String content;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: KvTextStyles.bodyLRE(
        color: color ?? KvDesignSystem().textNeutralBase,
      ),
    );
  }
}
