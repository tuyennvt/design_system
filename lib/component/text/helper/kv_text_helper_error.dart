import 'package:flutter/material.dart';

import '../../../kv_design_system.dart';
import 'kv_text_helper_description.dart';

class KvTextHelperError extends StatelessWidget {
  const KvTextHelperError({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return KvTextHelperDescription(
      text: text,
      color: KvDesignSystem().textDangeronWhiteTertiary,
    );
  }
}
