import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvPriceSwitchValue {
  primary,
  secondary,
}

class KvPriceSwitch extends StatefulWidget {
  const KvPriceSwitch({
    super.key,
    this.size = KvPriceSwitchSize.medium,
    this.style = KvPriceSwitchStyle.primaryStyle,
    this.value,
    this.primaryText = 'VND',
    this.secondaryText = '%',
    this.onChanged,
  });

  final KvPriceSwitchSize size;
  final KvPriceSwitchStyle style;
  final KvPriceSwitchValue? value;
  final String primaryText;
  final String secondaryText;
  final ValueChanged<KvPriceSwitchValue>? onChanged;

  @override
  State<KvPriceSwitch> createState() => _KvPriceSwitchState();
}

class _KvPriceSwitchState extends State<KvPriceSwitch> {
  var _value = KvPriceSwitchValue.primary;

  @override
  void initState() {
    _value = widget.value ?? KvPriceSwitchValue.primary;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant KvPriceSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _value = widget.value ?? KvPriceSwitchValue.primary;
    }
  }

  void _onTap() {
    if (widget.onChanged == null) {
      return;
    }
    setState(() {
      _value = _value == KvPriceSwitchValue.primary
          ? KvPriceSwitchValue.secondary
          : KvPriceSwitchValue.primary;
    });
    widget.onChanged?.call(_value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: theme.padding,
        decoration: BoxDecoration(
          color: theme.background,
          borderRadius: theme.borderRadius,
        ),
        width: theme.width,
        height: theme.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.primaryText,
                    style: theme.textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.secondaryText,
                    style: theme.textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              alignment: _value == KvPriceSwitchValue.primary
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              duration: const Duration(milliseconds: 167),
              child: _Knob(
                text: _value == KvPriceSwitchValue.primary
                    ? widget.primaryText
                    : widget.secondaryText,
                size: widget.size,
                theme: theme,
              ),
            )
          ],
        ),
      ),
    );
  }

  KvPriceSwitchThemeData get theme => KvPriceSwitchThemeData(
        size: widget.size,
        style: widget.style,
        enable: widget.onChanged != null,
      );
}

class _Knob extends StatelessWidget {
  const _Knob({
    required this.text,
    required this.size,
    required this.theme,
  });

  final String text;
  final KvPriceSwitchSize size;
  final KvPriceSwitchThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.knobColor,
        borderRadius: theme.knobBorderRadius,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          )
        ],
      ),
      width: theme.widthKnob,
      height: theme.heightKnob,
      child: Text(
        text,
        style: theme.textStyle.copyWith(color: theme.knobTextColor),
      ),
    );
  }
}
