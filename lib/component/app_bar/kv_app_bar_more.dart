import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

class KvAppBarMore extends StatelessWidget implements KvAppBarChild {
  const KvAppBarMore({
    super.key,
    this.avatarUrl,
    required this.pageTitle,
    this.subContent,
  });

  final String? avatarUrl;
  final String pageTitle;
  final KvAppBarSubContent? subContent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        KvCacheNetworkImage(
          url: avatarUrl,
          shape: KvCacheNetworkImageType.avatar,
        ),
        const SizedBox(
          width: KvDesignSystem().sizeSize12,
        ),
        Flexible(
          child: Column(
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
          ),
        ),
      ],
    );
  }

  @override
  KvAppBarType get appBarType => KvAppBarType.more;
}
