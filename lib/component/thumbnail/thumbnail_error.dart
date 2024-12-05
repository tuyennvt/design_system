import 'package:flutter/material.dart';

import '../../foundation/kv_icon.dart';
import '../../foundation/kv_icons.dart';
import 'kv_thumbnail_theme_data.dart';

class ThumbnailError extends StatelessWidget {
  const ThumbnailError({
    super.key,
    this.notFound = false,
    required this.theme,
  });

  final bool notFound;
  final KvThumbnailThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: notFound ? theme.notFoundBg : theme.errorBg,
        borderRadius: theme.borderRadius,
        shape: theme.boxShape,
      ),
      width: theme.size.value,
      height: theme.size.value,
      child: KvIcon(
        icon: KvIcons.triangle_exclamation_regular,
        color: notFound ? theme.notFoundIconColor : theme.errorIconColor,
        size: theme.errorIconSize,
      ),
    );
  }
}
