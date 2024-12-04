import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvTextSubContent extends StatelessWidget
    implements KvListTileFirstContentInstance, KvListTileSecondContentInstance {
  const KvTextSubContent({
    super.key,
    required this.subContent,
  });

  final String subContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      subContent,
      style: KvTextStyles.cationRe(
        color: KvDesignSystem().colorTextNeutralSecondary,
      ),
    );
  }
}
