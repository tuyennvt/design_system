import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

class KvTextPayment extends StatelessWidget {
  const KvTextPayment({
    super.key,
    required this.number,
  });

  final String number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: KvTextStyles.freeStyle(
        color: KvDesignSystem().colorTextLink,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 24 / 18,
      ),
    );
  }
}
