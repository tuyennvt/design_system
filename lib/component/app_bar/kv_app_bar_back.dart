import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

class KvAppBarBack extends StatelessWidget implements KvAppBarChild {
  const KvAppBarBack({
    super.key,
    required this.inlineButton,
  });

  final KvInlineButton inlineButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: inlineButton,
    );
  }

  @override
  KvAppBarType get appBarType => KvAppBarType.back;
}
