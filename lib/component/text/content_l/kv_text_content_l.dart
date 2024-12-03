import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvTextContentL extends StatelessWidget {
  const KvTextContentL({
    super.key,
    required this.content,
    this.color = DTokens.colorTextNeutralBase,
  });

  final String content;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: KvTextStyles.bodyL(color: color),
    );
  }
}
