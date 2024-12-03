import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

class KvAppBarPage extends StatelessWidget implements KvAppBarChild {
  const KvAppBarPage({
    super.key,
    required this.pageTitle,
    this.subContent,
  });

  final String pageTitle;
  final KvAppBarSubContent? subContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pageTitle,
          style: KvTextStyles.titleXL(),
        ),
        if (subContent != null) ...{
          subContent!,
        },
      ],
    );
  }

  @override
  KvAppBarType get appBarType => KvAppBarType.page;
}
