import 'package:flutter/material.dart';

import '../../kv_design_system.dart';
import '../../kv_design_system.dart';

enum KvThumbnailShape {
  circle,
  square,
}

enum KvThumbnailSize {
  xSmall,
  small,
  medium,
  large,
  xlarge,
  fluid,
}

extension KvThumbnailSizeExt on KvThumbnailSize {
  double get value {
    switch (this) {
      case KvThumbnailSize.xSmall:
        return KvDesignSystem().avatarSizeXS;
      case KvThumbnailSize.small:
        return KvDesignSystem().avatarSizeS;
      case KvThumbnailSize.medium:
        return KvDesignSystem().avatarSizeM;
      case KvThumbnailSize.large:
        return KvDesignSystem().avatarSizeL;
      case KvThumbnailSize.xlarge:
        return KvDesignSystem().avatarSizeXL;
      case KvThumbnailSize.fluid:
        return 68.0;
    }
  }
}

class KvThumbnailThemeData {
  const KvThumbnailThemeData({
    required this.size,
    required this.shape,
  });

  final KvThumbnailSize size;
  final KvThumbnailShape shape;

  Color get defaultBg => KvDesignSystem().avatarColorBGDefault;

  Color get errorBg => KvDesignSystem().avatarColorBGError;

  Color get notFoundBg => KvDesignSystem().avatarColorBGNotFound;

  Color get notFoundIconColor => KvDesignSystem().avatarColorIconNotFound;

  Color get errorIconColor => KvDesignSystem().avatarColorIconError;

  BoxShape get boxShape =>
      shape == KvThumbnailShape.circle ? BoxShape.circle : BoxShape.rectangle;

  BorderRadius? get borderRadius {
    if (shape == KvThumbnailShape.circle) {
      return null;
    }
    switch (size) {
      case KvThumbnailSize.xSmall:
        return const BorderRadius.all(Radius.circular(4));
      case KvThumbnailSize.small:
        return const BorderRadius.all(Radius.circular(4));
      case KvThumbnailSize.medium:
        return const BorderRadius.all(Radius.circular(8));
      case KvThumbnailSize.large:
        return const BorderRadius.all(Radius.circular(8));
      case KvThumbnailSize.xlarge:
        return const BorderRadius.all(Radius.circular(12));
      case KvThumbnailSize.fluid:
        return const BorderRadius.all(Radius.circular(12));
    }
  }

  double get childDefaultSize {
    switch (size) {
      case KvThumbnailSize.xSmall:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 12.5;
          case KvThumbnailShape.square:
            return 13.75;
        }
      case KvThumbnailSize.small:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 16.25;
          case KvThumbnailShape.square:
            return 17.5;
        }
      case KvThumbnailSize.medium:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 26.25;
          case KvThumbnailShape.square:
            return 27.5;
        }
      case KvThumbnailSize.large:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 37.5;
          case KvThumbnailShape.square:
            return 38.75;
        }
      case KvThumbnailSize.xlarge:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 43.75;
          case KvThumbnailShape.square:
            return 46.25;
        }
      case KvThumbnailSize.fluid:
        switch (shape) {
          case KvThumbnailShape.circle:
            return 43.75;
          case KvThumbnailShape.square:
            return 42.5;
        }
    }
  }

  KvIconSize get errorIconSize {
    switch (size) {
      case KvThumbnailSize.xSmall:
        return KvIconSize.iconXXS;
      case KvThumbnailSize.small:
        return KvIconSize.iconXXS;
      case KvThumbnailSize.medium:
        return KvIconSize.iconXS;
      case KvThumbnailSize.large:
        return KvIconSize.iconL;
      case KvThumbnailSize.xlarge:
        return KvIconSize.iconXL;
      case KvThumbnailSize.fluid:
        return KvIconSize.iconXL;
    }
  }
}
