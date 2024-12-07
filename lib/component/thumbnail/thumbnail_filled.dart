import 'package:flutter/material.dart';

import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';

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
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: onTap,
          child: child,
        ),
        if (onDeletePressed != null &&
            (theme.size == KvThumbnailSize.medium ||
                theme.size == KvThumbnailSize.large ||
                theme.size == KvThumbnailSize.xlarge ||
                theme.size == KvThumbnailSize.fluid)) ...{
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 3, right: 3),
              child: _DeleteButton(
                size: _deleteIconSize,
                onPressed: onDeletePressed!,
              ),
            ),
          ),
        },
      ],
    );
  }

  KvIconSize get _deleteIconSize {
    switch (theme.size) {
      case KvThumbnailSize.xSmall:
        return KvIconSize.iconXXS;
      case KvThumbnailSize.small:
        return KvIconSize.iconXXS;
      case KvThumbnailSize.medium:
        return KvIconSize.iconXXS;
      case KvThumbnailSize.large:
        return KvIconSize.iconXS;
      case KvThumbnailSize.xlarge:
        return KvIconSize.iconXS;
      case KvThumbnailSize.fluid:
        return KvIconSize.iconXS;
    }
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({
    required this.size,
    required this.onPressed,
  });

  final KvIconSize size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return KvMinimumTapArea(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: KvDesignSystem().bGLayerLevel0,
          shape: BoxShape.circle,
        ),
        width: size.value,
        height: size.value,
        child: KvIcon(
          icon: KvIcons.circle_xmark_solid,
          color: KvDesignSystem().iconNeutralonSolidSecondaryAction,
          size: size,
        ),
      ),
    );
  }
}
