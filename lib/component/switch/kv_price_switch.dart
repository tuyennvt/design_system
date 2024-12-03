import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';

enum KvPriceSwitchSize {
  small(Size(84, DTokens.sizeSize24)),
  medium(Size(84, DTokens.sizeSize32));

  const KvPriceSwitchSize(this.value);

  final Size value;
}

class KvPriceSwitch extends StatefulWidget {
  const KvPriceSwitch({
    super.key,
    this.size = KvPriceSwitchSize.medium,
    this.style = KvPriceSwitchStyle.primaryStyle,
    this.initialValue,
    required this.primaryText,
    required this.secondaryText,
    required this.onChanged,
  });

  final KvPriceSwitchSize size;
  final KvPriceSwitchStyle style;
  final String? initialValue;
  final String primaryText;
  final String secondaryText;
  final ValueChanged<String> onChanged;

  @override
  State<KvPriceSwitch> createState() => _KvPriceSwitchState();
}

class _KvPriceSwitchState extends State<KvPriceSwitch> {
  late String _value;

  @override
  void initState() {
    _value = widget.initialValue ?? widget.primaryText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = _value == widget.primaryText
              ? widget.secondaryText
              : widget.primaryText;
        });
        widget.onChanged(_value);
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: theme.background,
          borderRadius: theme.borderRadius,
        ),
        width: widget.size.value.width,
        height: widget.size.value.height,
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
              alignment: _value == widget.primaryText
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              duration: const Duration(milliseconds: 167),
              child: _Knob(
                knobText: _value,
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
      );
}

class _Knob extends StatelessWidget {
  const _Knob({
    required this.knobText,
    required this.size,
    required this.theme,
  });

  final String knobText;
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
      width: width,
      height: height,
      child: Text(
        knobText,
        style: theme.textStyle.copyWith(color: theme.knobTextColor),
      ),
    );
  }

  double get height {
    switch (size) {
      case KvPriceSwitchSize.small:
        return 20.0;
      case KvPriceSwitchSize.medium:
        return 28.0;
    }
  }

  double get width => 40.0;
}
