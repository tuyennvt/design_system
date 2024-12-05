import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../foundation/kv_svg_asset.dart';
import '../../generated/assets.dart';
import '../../utils.dart';
import 'kv_thumbnail_theme_data.dart';

class ThumbnailDefault extends StatelessWidget {
  const ThumbnailDefault({
    super.key,
    this.assetDefault,
    required this.theme,
  });

  final String? assetDefault;
  final KvThumbnailThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.defaultBg,
        borderRadius: theme.borderRadius,
        shape: theme.boxShape,
      ),
      width: theme.size.value,
      height: theme.size.value,
      child: child,
    );
  }

  Widget get child {
    final childDefaultSize = theme.childDefaultSize;
    Widget widget;
    if (assetDefault.isNotNullOrEmpty) {
      if (assetDefault!.endsWith('.svg')) {
        widget = SvgPicture.asset(
          KvSvgAsset(assetDefault!).value,
          width: childDefaultSize,
          height: childDefaultSize,
        );
      } else {
        widget = Image.asset(
          assetDefault!,
          width: childDefaultSize,
          height: childDefaultSize,
        );
      }
    } else {
      widget = SvgPicture.asset(
        KvSvgAsset(
          theme.shape == KvThumbnailShape.circle
              ? Assets.iconsAvatar
              : Assets.iconsThumbnail,
          assetPackage: packageRoot,
        ).value,
        width: childDefaultSize,
        height: childDefaultSize,
        fit: theme.shape == KvThumbnailShape.circle
            ? BoxFit.scaleDown
            : BoxFit.contain,
      );
    }
    return theme.shape == KvThumbnailShape.circle
        ? ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(500)),
            child: widget,
          )
        : widget;
  }
}
