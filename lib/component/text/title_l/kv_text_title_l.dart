import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvTextTitleL extends StatelessWidget {
  const KvTextTitleL({
    super.key,
    required this.title,
    this.color = DTokens.colorTextNeutralBase,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: KvTextStyles.titleL(color: color),
    );
  }
}
