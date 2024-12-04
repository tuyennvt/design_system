import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/kv_icons.dart';
import '../../kv_design_system.dart';
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
                borderRadius:
                    BorderRadius.circular(KvDesignSystem().checkboxRadius),
              ),
              width: KvDesignSystem().checkboxSize,
              height: KvDesignSystem().checkboxSize,
              duration: const Duration(milliseconds: 167),
              child: _selected
                  ? KvIcon(
                      icon: KvIcons.check_solid,
                      color: KvDesignSystem().checkboxColorBGTickDefault,
                      size: KvIconSize.iconXS,
                    )
                  : const SizedBox(),
            ),
            if (content.isNotNullOrEmpty) ...{
              SizedBox(width: KvDesignSystem().checkboxGutter),
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
      return KvDesignSystem().textNeutralBase;
    } else {
      return KvDesignSystem().textNeutralDisabled;
    }
  }

  Color get color {
    if (_selected) {
      if (enabled) {
        return KvDesignSystem().checkboxColorBGSelectedDefault;
      } else {
        return KvDesignSystem().checkboxColorBGSelectedDisabled;
      }
    } else {
      if (enabled) {
        return KvDesignSystem().checkboxColorBGUnSelectedDefault;
      } else {
        return KvDesignSystem().checkboxColorBGUnSelectedDisabled;
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
      return KvDesignSystem().checkboxColorBorderDefault;
    } else {
      return KvDesignSystem().checkboxColorBorderDisabled;
    }
  }
}
