import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_color.dart';
import '../../style_dictionary/style_dictionary_components_color.dart';
import '../../style_dictionary/style_dictionary_components_sizes.dart';

enum KvCacheNetworkImageType {
  avatar,
  image,
}

enum KvCacheNetworkImageSize {
  extraSmall(DTokens.thumbnailThumbnailSizeXs),
  small(DTokens.thumbnailThumbnailSizeS),
  medium(DTokens.thumbnailThumbnailSizeM),
  large(DTokens.thumbnailThumbnailSizeL),
  extraLarge(DTokens.thumbnailThumbnailSizeXl);

  const KvCacheNetworkImageSize(this.value);

  final double value;
}

class KvCacheNetworkImageThemeData {
  const KvCacheNetworkImageThemeData({
    required this.imageSize,
    required this.imageType,
  });

  final KvCacheNetworkImageSize imageSize;
  final KvCacheNetworkImageType imageType;

  Color get backgroundColorDefault {
    return DTokens.thumbnailThumbnailColorBgDefault;
  }

  Color get backgroundColorError {
    return DTokens.thumbnailThumbnailColorBgError;
  }

  Color get backgroundColorNotFound {
    return DTokens.thumbnailThumbnailColorBgNotFound;
  }

  Color get iconColorNotFound {
    return DTokens.colorIconNeutralLabel;
  }

  Color get iconColorError {
    return DTokens.thumbnailThumbnailColorIconError;
  }

  BoxShape get shape {
    return imageType == KvCacheNetworkImageType.avatar
        ? BoxShape.circle
        : BoxShape.rectangle;
  }

  BorderRadius? get borderRadius {
    if (imageType == KvCacheNetworkImageType.avatar) {
      return null;
    }
    switch (imageSize) {
      case KvCacheNetworkImageSize.extraSmall:
        return const BorderRadius.all(Radius.circular(4.0));
      case KvCacheNetworkImageSize.small:
        return const BorderRadius.all(Radius.circular(4.0));
      case KvCacheNetworkImageSize.medium:
        return const BorderRadius.all(Radius.circular(8.0));
      case KvCacheNetworkImageSize.large:
        return const BorderRadius.all(Radius.circular(8.0));
      case KvCacheNetworkImageSize.extraLarge:
        return const BorderRadius.all(Radius.circular(12.0));
    }
  }
}
