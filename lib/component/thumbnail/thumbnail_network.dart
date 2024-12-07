import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'kv_thumbnail_theme_data.dart';
import 'thumbnail_error.dart';
import 'thumbnail_filled.dart';
import 'thumbnail_placeholder.dart';

class ThumbnailNetwork extends StatelessWidget {
  const ThumbnailNetwork({
    super.key,
    required this.url,
    required this.theme,
    this.onTap,
    this.onDeletePressed,
  });

  final String url;
  final KvThumbnailThemeData theme;
  final VoidCallback? onTap;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (_, imageProvider) => ThumbnailFilled(
        imageProvider: imageProvider,
        theme: theme,
        onTap: onTap,
        onDeletePressed: onDeletePressed,
      ),
      placeholder: (_, __) => ThumbnailPlaceholder(theme: theme),
      errorWidget: (_, __, error) => ThumbnailError(
        notFound: error.toString().contains('404') ||
            error.toString().contains('Not Found'),
        theme: theme,
      ),
      width: theme.size.value,
      height: theme.size.value,
    );
  }
}
