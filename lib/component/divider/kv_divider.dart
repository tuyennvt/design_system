import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

class KvDivider extends StatelessWidget {
  const KvDivider({
    super.key,
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  final double thickness;
  final double indent;
  final double endIndent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: KvDesignSystem().dividerBlock),
      height: thickness,
      margin: EdgeInsets.only(
        left: indent,
        right: endIndent,
      ),
    );
  }
}
