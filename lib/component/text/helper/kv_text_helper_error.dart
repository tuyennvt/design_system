import 'package:flutter/material.dart';

import '../../../style_dictionary/style_dictionary_color.dart';
import 'kv_text_helper_description.dart';

class KvTextHelperError extends StatelessWidget {
  const KvTextHelperError({
    super.key,
    required this.errorText,
  });

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return KvTextHelperDescription(
      descText: errorText,
      color: DTokens.colorTextDangerOnwhiteTertiary,
    );
  }
}
