import 'package:flutter/material.dart';

import '../../style_dictionary/style_dictionary_size.dart';

enum KvListTileSize {
  small,
  medium,
}

enum KvListTileAlignment {
  middle,
  top,
}

class KvListTileThemeData {
  const KvListTileThemeData({
    required this.size,
    required this.alignment,
  });

  final KvListTileSize size;
  final KvListTileAlignment alignment;

  CrossAxisAlignment get crossAxisAlignment {
    return alignment == KvListTileAlignment.top
        ? CrossAxisAlignment.start
        : CrossAxisAlignment.center;
  }

  double get minHeight {
    switch (size) {
      case KvListTileSize.small:
        return DTokens.sizeSize40;
      case KvListTileSize.medium:
        return DTokens.sizeSize48;
    }
  }

  EdgeInsets get padding {
    switch (size) {
      case KvListTileSize.small:
        return const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: DTokens.sizeSize16,
        );
      case KvListTileSize.medium:
        return const EdgeInsets.symmetric(
          vertical: DTokens.sizeSize12,
          horizontal: DTokens.sizeSize16,
        );
    }
  }

  EdgeInsets get paddingVertical {
    switch (size) {
      case KvListTileSize.small:
        return const EdgeInsets.symmetric(vertical: 8);
      case KvListTileSize.medium:
        return const EdgeInsets.symmetric(
            vertical: DTokens.sizeSize12,);
    }
  }
}
