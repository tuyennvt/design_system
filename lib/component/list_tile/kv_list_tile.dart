import 'package:flutter/material.dart';

import 'kv_list_tile_center.dart';
import 'kv_list_tile_fluid.dart';
import 'kv_list_tile_item.dart';
import 'kv_list_tile_theme_data.dart';

abstract class KvListTileFirstContentInstance extends Widget {
  const KvListTileFirstContentInstance({super.key});
}

abstract class KvListTileFirstValueInstance extends Widget {
  const KvListTileFirstValueInstance({super.key});
}

abstract class KvListTileSecondContentInstance extends Widget {
  const KvListTileSecondContentInstance({super.key});
}

abstract class KvListTileSecondValueInstance extends Widget {
  const KvListTileSecondValueInstance({super.key});
}

abstract class KvListTileExternalContentInstance extends Widget {
  const KvListTileExternalContentInstance({super.key});
}

enum KvListTileLayout {
  fluid,
  item,
  center,
}

class KvListTile extends StatelessWidget {
  const KvListTile({
    super.key,
    this.layout = KvListTileLayout.center,
    this.size = KvListTileSize.medium,
    this.alignment = KvListTileAlignment.middle,
    this.prefix,
    this.suffix,
    this.firstContent,
    this.firstValue,
    this.secondContent,
    this.secondValue,
    this.externalContent,
    this.isLastItem = false,
  });

  final KvListTileLayout layout;
  final KvListTileSize size;
  final KvListTileAlignment alignment;
  final Widget? prefix;
  final Widget? suffix;
  final KvListTileFirstContentInstance? firstContent;
  final KvListTileFirstValueInstance? firstValue;
  final KvListTileSecondContentInstance? secondContent;
  final KvListTileSecondValueInstance? secondValue;
  final KvListTileExternalContentInstance? externalContent;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    switch (layout) {
      case KvListTileLayout.fluid:
        return KvListTileFluid(
          size: size,
          alignment: alignment,
          isLastItem: isLastItem,
          prefix: prefix,
          suffix: suffix,
          firstContent: firstContent,
          firstValue: firstValue,
          secondContent: secondContent,
          secondValue: secondValue,
          externalContent: externalContent,
        );
      case KvListTileLayout.item:
        return KvListTileItem(
          size: size,
          alignment: alignment,
          isLastItem: isLastItem,
          prefix: prefix,
          suffix: suffix,
          firstContent: firstContent,
          firstValue: firstValue,
          secondContent: secondContent,
          secondValue: secondValue,
          externalContent: externalContent,
        );
      case KvListTileLayout.center:
        return KvListTileCenter(
          size: size,
          alignment: alignment,
          isLastItem: isLastItem,
          prefix: prefix,
          suffix: suffix,
          firstContent: firstContent,
          firstValue: firstValue,
          secondContent: secondContent,
          secondValue: secondValue,
          externalContent: externalContent,
        );
    }
  }
}
