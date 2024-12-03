import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../utils.dart';

class KvInputHelperText extends StatelessWidget {
  const KvInputHelperText({
    super.key,
    this.helperText,
    this.errorText,
  });

  final String? helperText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    if (helperText.isNullOrEmpty && errorText.isNullOrEmpty) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.only(
        left: DTokens.sizeSize16,
        top: 4,
        right: DTokens.sizeSize16,
      ),
      child: Text(
        helperText ?? errorText ?? '',
        style: KvTextStyles.cationRe(
          color: errorText != null
              ? DTokens.colorTextDangerOnwhiteTertiary
              : DTokens.colorTextNeutralSecondary,
        ),
      ),
    );
  }
}
