import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';
import 'kv_thumbnail_theme_data.dart';

class ThumbnailFilled extends StatelessWidget {
  const ThumbnailFilled({
    super.key,
    required this.imageProvider,
    required this.theme,
    this.fit = BoxFit.cover,
    this.onTap,
    this.onDeletePressed,
  });

  final ImageProvider imageProvider;
  final KvThumbnailThemeData theme;
  final BoxFit fit;
  final VoidCallback? onTap;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (theme.shape) {
      case KvThumbnailShape.circle:
        child = ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(500)),
          child: Image(
            image: imageProvider,
            width: theme.size.value,
            height: theme.size.value,
            fit: fit,
          ),
        );
        break;
      case KvThumbnailShape.square:
        child = ClipRRect(
          borderRadius: theme.borderRadius ?? BorderRadius.zero,
          child: Image(
            image: imageProvider,
            width: theme.size.value,
            height: theme.size.value,
            fit: fit,
          ),
        );
        break;
    }
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: child,
        ),
        if (onDeletePressed != null) ...{
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 3, right: 3),
              child: KvMinimumTapArea(
                onTap: onDeletePressed!,
                child: KvIcon(
                  icon: KvIcons.circle_xmark_solid,
                  color: KvDesignSystem().iconNeutralonSolidSecondaryAction,
                  size: KvIconSize.iconXS,
                ),
              ),
            ),
          ),
        }
      ],
    );
  }
}
