import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../generated/assets.dart';
import '../../utils.dart';

class KvTag extends StatelessWidget implements KvTextSupportWidget {
  const KvTag({
    super.key,
    this.size = KvTagSize.medium,
    this.style = KvTagStyle.neutral,
    this.type = KvTagType.faded,
    required this.label,
    this.assetPrefixIcon,
    this.onClearPressed,
    this.onSelectPressed,
  }) : assert(
          !(onClearPressed != null && onSelectPressed != null),
          'onClearPressed and onSelectPressed cannot be used at the same time',
        );

  final KvTagSize size;
  final KvTagStyle style;
  final KvTagType type;
  final String label;
  final KvSvgAsset? assetPrefixIcon;
  final VoidCallback? onClearPressed;
  final VoidCallback? onSelectPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: theme.padding,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: theme.border,
        borderRadius: theme.borderRadius,
      ),
      height: size.value,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (assetPrefixIcon.isNotNullOrEmpty) ...{
            KvIcon(
              icon: assetPrefixIcon!,
              color: theme.prefixIconColor,
              size: theme.prefixIconSize,
            ),
            SizedBox(width: theme.gutter),
          },
          Flexible(
            child: Text(
              label,
              style: theme.labelStyle,
            ),
          ),
          if (assetSuffixIcon.isNotNullOrEmpty) ...{
            SizedBox(width: theme.gutter),
            KvMinimumTapArea(
              onTap: () {
                if (onClearPressed != null) {
                  onClearPressed!.call();
                } else if (onSelectPressed != null) {
                  onSelectPressed!.call();
                }
              },
              child: KvIcon(
                icon: assetSuffixIcon!,
                color: theme.suffixIconColor,
                size: theme.suffixIconSize,
              ),
            ),
          },
        ],
      ),
    );
  }

  KvTagThemeData get theme => KvTagThemeData(
        size: size,
        style: style,
        type: type,
      );

  KvSvgAsset? get assetSuffixIcon {
    if (onClearPressed != null) {
      return KvSvgAsset(
        Assets.iconsXmark,
        assetPackage: packageRoot,
      );
    } else if (onSelectPressed != null) {
      return KvSvgAsset(
        Assets.iconsChevronDown,
        assetPackage: packageRoot,
      );
    }
    return null;
  }

  @override
  KvTextSupportWidgetType get supportWidgetType => KvTextSupportWidgetType.tag;
}
