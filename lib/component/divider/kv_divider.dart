import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_color.dart';

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
      decoration:
          const BoxDecoration(color: DTokens.colorDividerBlock),
      height: thickness,
      margin: EdgeInsets.only(
        left: indent,
        right: endIndent,
      ),
    );
  }
}
