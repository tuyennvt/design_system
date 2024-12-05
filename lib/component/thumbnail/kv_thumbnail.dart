import 'dart:io';

import 'package:flutter/material.dart';

import '../../utils.dart';
import 'kv_thumbnail_theme_data.dart';
import 'thumbnail_default.dart';
import 'thumbnail_filled.dart';
import 'thumbnail_network.dart';

class KvThumbnail extends StatelessWidget {
  const KvThumbnail({
    super.key,
    this.url,
    this.file,
    this.assetDefault,
    this.size = KvThumbnailSize.medium,
    this.shape = KvThumbnailShape.square,
    this.fit = BoxFit.cover,
    this.onTap,
    this.onDeletePressed,
  });

  final String? url;
  final File? file;
  final String? assetDefault;
  final KvThumbnailSize size;
  final KvThumbnailShape shape;
  final BoxFit fit;
  final VoidCallback? onTap;
  final VoidCallback? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    if (url.isNullOrEmpty && file == null) {
      return ThumbnailDefault(
        assetDefault: assetDefault,
        theme: theme,
      );
    }
    if (file != null) {
      return ThumbnailFilled(
        imageProvider: FileImage(file!),
        theme: theme,
        fit: fit,
        onTap: onTap,
        onDeletePressed: onDeletePressed,
      );
    }
    return ThumbnailNetwork(
      url: url!,
      theme: theme,
      onTap: onTap,
      onDeletePressed: onDeletePressed,
    );
  }

  KvThumbnailThemeData get theme => KvThumbnailThemeData(
        size: size,
        shape: shape,
      );
}
