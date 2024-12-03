import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
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
              width: DTokens.componentTokensRadioSize,
              height: DTokens.componentTokensRadioSize,
              duration: const Duration(milliseconds: 167),
            ),
            if (content.isNotNullOrEmpty) ...{
              const SizedBox(width: DTokens.sizeSize12),
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
      return DTokens.colorTextNeutralBase;
    } else {
      return DTokens.colorTextNeutralDisabled;
    }
  }

  Color get color {
    if (enabled) {
      return DTokens.componentTokensRadioColorBgDefault;
    } else {
      return DTokens.componentTokensRadioColorBgDisabled;
    }
  }

  BorderSide get borderSide {
    double borderWidth = _selected ? 5 : 1;
    return BorderSide(color: borderColor, width: borderWidth);
  }

  Color get borderColor {
    if (_selected) {
      if (enabled) {
        return DTokens
            .componentTokensRadioColorBorderSelectedDefault;
      } else {
        return DTokens
            .componentTokensRadioColorBorderSelectedDisabled;
      }
    } else {
      if (enabled) {
        return DTokens
            .componentTokensRadioColorBorderDefaultDefault;
      } else {
        return DTokens
            .componentTokensRadioColorBorderDefaultDisabled;
      }
    }
  }
}
