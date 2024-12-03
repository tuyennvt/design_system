import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../employee_flutter_design_system.dart';
import '../../generated/assets.dart';
import '../../utils.dart';

class KvCheckbox extends StatelessWidget {
  const KvCheckbox({
    super.key,
    required this.value,
    this.content,
    this.enabled = true,
    this.padding = EdgeInsets.zero,
    required this.onChanged,
  });

  final bool value;

  final String? content;

  final bool enabled;

  final EdgeInsets padding;

  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enabled) {
          onChanged.call(!value);
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                color: color,
                border: border,
                borderRadius: const BorderRadius.all(
                  Radius.circular(6.0),
                ),
              ),
              width: DTokens.componentTokensCheckboxSize,
              height: DTokens.componentTokensCheckboxSize,
              duration: const Duration(milliseconds: 167),
              child: _selected
                  ? SvgPicture.asset(
                      KvSvgAsset(
                        Assets.iconsCheck,
                        assetPackage: packageRoot,
                      ).value,
                      width: 10,
                      height: 10,
                      fit: BoxFit.scaleDown,
                    )
                  : const SizedBox(),
            ),
            if (content.isNotNullOrEmpty) ...{
              const SizedBox(width: DTokens.sizeSize12),
              Flexible(
                child: Text(
                  content!,
                  style: KvTextStyles.bodyMRE(color: contentColor),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }

  bool get _selected => value;

  Color get contentColor {
    if (enabled) {
      return DTokens.colorTextNeutralBase;
    } else {
      return DTokens.colorTextNeutralDisabled;
    }
  }

  Color get color {
    if (_selected) {
      if (enabled) {
        return DTokens
            .componentTokensCheckboxColorBgSelectedDefault;
      } else {
        return DTokens
            .componentTokensCheckboxColorBgSelectedDisabled;
      }
    } else {
      if (enabled) {
        return DTokens
            .componentTokensCheckboxColorBgDefaultDefault;
      } else {
        return DTokens
            .componentTokensCheckboxColorBgDefaultDisabled;
      }
    }
  }

  Border? get border {
    if (_selected) {
      return null;
    }
    return Border.all(color: borderColor);
  }

  Color get borderColor {
    if (enabled) {
      return DTokens
          .componentTokensCheckboxColorBorderDefault;
    } else {
      return DTokens
          .componentTokensCheckboxColorBorderDisabled;
    }
  }
}
