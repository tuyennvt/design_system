import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvTextLink extends StatelessWidget {
  const KvTextLink({
    super.key,
    required this.link,
    this.onPressed,
  });

  final String link;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        link,
        style: KvTextStyles.freeStyle(
          color: DTokens.colorTextLink,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          decoration: TextDecoration.underline,
          height: 20 / 14,
        ),
      ),
    );
  }
}
