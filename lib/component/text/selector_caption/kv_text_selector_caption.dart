import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../generated/assets.dart';
import '../../../utils.dart';

class KvTextSelectorCaption extends StatelessWidget
    implements KvListTileSecondContentInstance {
  const KvTextSelectorCaption({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Text(
            text,
            style: KvTextStyles.cationRe(
              color: KvDesignSystem().colorTextNeutralSecondary,
            ),
          ),
          const SizedBox(width: 4),
          KvIcon(
            icon: KvSvgAsset(
              Assets.iconsCaretDown,
              assetPackage: packageRoot,
            ),
            color: KvDesignSystem().colorIconNeutralSecondaryAction,
            size: KvIconSize.size12,
          ),
        ],
      ),
    );
  }
}
