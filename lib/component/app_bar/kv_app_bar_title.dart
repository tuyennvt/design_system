import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

class KvAppBarTitle extends StatelessWidget implements KvAppBarChild {
  const KvAppBarTitle({
    super.key,
    required this.pageTitle,
  });

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      pageTitle,
      style: KvTextStyles.headlineM(),
    );
  }

  @override
  KvAppBarType get appBarType => KvAppBarType.title;
}
