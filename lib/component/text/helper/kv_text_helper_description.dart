import 'package:flutter/material.dart';

import '../../../foundation/kv_text_styles.dart';
import '../../../style_dictionary/style_dictionary_color.dart';

class KvTextHelperDescription extends StatelessWidget {
  const KvTextHelperDescription({
    super.key,
    required this.descText,
    this.color = DTokens.colorTextNeutralSecondary,
  });

  final String descText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      descText,
      style: KvTextStyles.cationRe(color: color),
    );
  }
}
