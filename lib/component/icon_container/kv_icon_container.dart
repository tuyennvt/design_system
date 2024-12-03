import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvIconContainerSize {
  extraSmall(DTokens.sizeSize16),
  small(DTokens.sizeSize24),
  medium(DTokens.sizeSize32),
  large(DTokens.sizeSize40);

  const KvIconContainerSize(this.value);

  final double value;
}

class KvIconContainer extends StatelessWidget {
  const KvIconContainer({
    super.key,
    this.iconContainerSize = KvIconContainerSize.medium,
    this.iconContainerStyle = KvIconContainerStyle.neutral,
    required this.assetIcon,
    this.onTap,
  });

  final KvIconContainerSize iconContainerSize;
  final KvIconContainerStyle iconContainerStyle;
  final KvSvgAsset assetIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          shape: BoxShape.circle,
        ),
        constraints: BoxConstraints.tight(
          Size.square(iconContainerSize.value),
        ),
        child: KvIcon(
          assetIcon: assetIcon,
          color: theme.iconColor,
          size: KvIconSize.size16,
        ),
      ),
    );
  }

  KvIconContainerThemeData get theme =>
      KvIconContainerThemeData(iconContainerStyle);
}
