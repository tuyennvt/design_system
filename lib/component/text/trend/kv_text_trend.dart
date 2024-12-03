import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';
import '../../../generated/assets.dart';
import '../../../utils.dart';

enum KvTextTrendType {
  up,
  down,
}

class KvTextTrend extends StatelessWidget implements KvTextSupportWidget {
  const KvTextTrend({
    Key? key,
    required this.text,
    required this.type,
  }) : super(key: key);
  final String text;
  final KvTextTrendType type;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: KvTextStyles.labelS(color: color),
        ),
        KvIcon(
          assetIcon: assetIcon,
          color: color,
          size: KvIconSize.size12,
        ),
      ],
    );
  }

  Color get color {
    switch (type) {
      case KvTextTrendType.up:
        return DTokens.colorTextSuccessOnwhiteTertiary;
      case KvTextTrendType.down:
        return DTokens.colorTextDangerDefault;
    }
  }

  KvSvgAsset get assetIcon {
    String assetName;
    switch (type) {
      case KvTextTrendType.up:
        assetName = Assets.iconsArrowUpRight;
        break;
      case KvTextTrendType.down:
        assetName = Assets.iconsArrowDownRight;
        break;
    }
    return KvSvgAsset(
      assetName,
      assetPackage: packageRoot,
    );
  }

  @override
  KvTextSupportWidgetType get supportWidgetType =>
      KvTextSupportWidgetType.trendText;
}
