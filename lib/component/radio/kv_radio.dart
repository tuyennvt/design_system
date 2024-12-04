import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../kv_design_system.dart';
import '../../utils.dart';

class KvRadio<T> extends StatelessWidget {
  const KvRadio({
    super.key,
    required this.value,
    this.groupValue,
    this.content,
    this.enabled = true,
    this.padding = EdgeInsets.zero,
    required this.onChanged,
  });

  final T value;

  final T? groupValue;

  final String? content;

  final bool enabled;

  final EdgeInsets padding;

  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enabled) {
          onChanged.call(value);
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
                border: Border.fromBorderSide(borderSide),
                shape: BoxShape.circle,
              ),
              width: KvDesignSystem().radioSize,
              height: KvDesignSystem().radioSize,
              duration: const Duration(milliseconds: 167),
            ),
            if (content.isNotNullOrEmpty) ...{
              SizedBox(width: KvDesignSystem().radioGutter),
              Flexible(
                child: Text(
                  content!,
                  style: KvTextStyles.bodyMRE(color: contentColor),
                ),
              )
            }
          ],
        ),
      ),
    );
  }

  bool get _selected => value == groupValue;

  Color get contentColor {
    if (enabled) {
      return KvDesignSystem().textNeutralBase;
    } else {
      return KvDesignSystem().textNeutralDisabled;
    }
  }

  Color get color {
    if (enabled) {
      return KvDesignSystem().radioColorBGDefault;
    } else {
      return KvDesignSystem().radioColorBGDisabled;
    }
  }

  BorderSide get borderSide {
    double borderWidth = _selected ? 5 : 1;
    return BorderSide(color: borderColor, width: borderWidth);
  }

  Color get borderColor {
    if (_selected) {
      if (enabled) {
        return KvDesignSystem().radioColorBorderSelectedDefault;
      } else {
        return KvDesignSystem().radioColorBorderSelectedDisabled;
      }
    } else {
      if (enabled) {
        return KvDesignSystem().radioColorBorderUnSelectedDefault;
      } else {
        return KvDesignSystem().radioColorBorderUnSelectedDisabled;
      }
    }
  }
}
