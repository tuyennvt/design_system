import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvAppBarLogoType {
  master,
  software,
  finance,
  connect,
}

class KvAppBarLogo extends StatelessWidget implements KvAppBarChild {
  const KvAppBarLogo({
    super.key,
    this.logoType = KvAppBarLogoType.master,
    this.revert = false,
  });

  final KvAppBarLogoType logoType;
  final bool revert;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            logoAssetImage,
            package: 'employee_flutter_design_system',
          ),
          height: KvDesignSystem().sizeSize40,
        ),
      ],
    );
  }

  String get logoAssetImage {
    switch (logoType) {
      case KvAppBarLogoType.master:
        return 'assets/images/kv_master${revert ? '_revert' : ''}.webp';
      case KvAppBarLogoType.software:
        return 'assets/images/kv_software${revert ? '_revert' : ''}.webp';
      case KvAppBarLogoType.finance:
        return 'assets/images/kv_finance${revert ? '_revert' : ''}.webp';
      case KvAppBarLogoType.connect:
        return 'assets/images/kv_connect${revert ? '_revert' : ''}.webp';
      default:
        return 'assets/images/kv_master${revert ? '_revert' : ''}.webp';
    }
  }

  @override
  KvAppBarType get appBarType => KvAppBarType.logo;
}
