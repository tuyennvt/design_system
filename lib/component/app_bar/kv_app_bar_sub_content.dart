import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../generated/assets.dart';
import '../../utils.dart';

class KvAppBarSubContent extends StatelessWidget {
  const KvAppBarSubContent({
    super.key,
    required this.subContent,
    this.showIcon = true,
    this.onPressed,
  });

  final String subContent;
  final bool showIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            subContent,
            style: KvTextStyles.cationRe(
              color: DTokens.colorTextNeutralSecondary,
            ),
          ),
          if (showIcon) ...{
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: KvIcon(
                assetIcon: KvSvgAsset(
                  Assets.iconsCaretDown,
                  assetPackage: packageRoot,
                ),
                color: DTokens.colorTextNeutralSecondary,
                size: KvIconSize.size16,
              ),
            ),
          },
        ],
      ),
    );
  }
}
