import 'package:example/swipe/kv_swipe_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:kv_design_system/component/divider/kv_divider.dart';

typedef KvSwipeLabelBuilder<T> = List<String> Function(List<T> items);

class KvSwipe<T> extends StatefulWidget {
  const KvSwipe({
    super.key,
    this.style = KvSwipeStyle.primary,
    required this.itemSelected,
    required this.items,
    required this.labelBuilder,
    this.onChanged,
  });

  final KvSwipeStyle style;
  final T itemSelected;
  final List<T> items;
  final KvSwipeLabelBuilder<T> labelBuilder;
  final ValueChanged<T>? onChanged;

  @override
  State<KvSwipe<T>> createState() => _KvSwipeState<T>();
}

class _KvSwipeState<T> extends State<KvSwipe<T>> {
  late T _itemSelected;

  @override
  void initState() {
    super.initState();
    _itemSelected = widget.itemSelected;
  }

  @override
  void didUpdateWidget(covariant KvSwipe<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.itemSelected != oldWidget.itemSelected) {
      _itemSelected = widget.itemSelected;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _theme.padding,
      decoration: BoxDecoration(
        color: _theme.bgColor,
        borderRadius: _theme.borderRadius,
      ),
      height: _theme.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            children: _itemWidgets,
          ),
          AnimatedContainer(
            alignment: _value == KvSwipeValue.primary
                ? Alignment.centerLeft
                : Alignment.centerRight,
            duration: const Duration(milliseconds: 167),
            child: _Knob(
              text: _value == KvSwipeValue.primary
                  ? widget.primaryText
                  : widget.secondaryText,
              size: widget.size,
              theme: theme,
            ),
          ),
        ],
      ),
    );
  }

  KvSwipeThemeData get _theme => KvSwipeThemeData(style: widget.style);

  List<Widget> get _itemWidgets {
    final itemWidgets = <Widget>[];
    final itemLabels = widget.labelBuilder(widget.items);
    for (int i = 0; i < widget.items.length; i++) {
      final item = widget.items[i];
      itemWidgets.add(
        _ItemWidget(
          label: itemLabels[i],
          visibleDivider: i < widget.items.length - 1,
          theme: _theme,
          enabled: widget.onChanged != null,
          onPressed: () => _onItemPressed.call(item),
        ),
      );
    }
    return itemWidgets;
  }

  void _onItemPressed(T value) {
    _itemSelected = value;
    setState(() {});
    widget.onChanged?.call(value);
  }
}

class _ItemWidget<T> extends StatelessWidget {
  const _ItemWidget({
    super.key,
    required this.label,
    required this.visibleDivider,
    required this.theme,
    required this.enabled,
    required this.onPressed,
  });

  final String label;
  final bool visibleDivider;
  final KvSwipeThemeData theme;
  final bool enabled;
  final VoidCallback onPressed;

  void _onPressed() {
    if (!enabled) {
      return;
    }
    onPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPressed,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: theme.labelStyle,
              textAlign: TextAlign.center,
            ),
          ),
          if (visibleDivider) ...{
            KvDivider(
              orientation: KvDividerOrientation.vertical,
              indent: theme.paddingDivider,
              endIndent: theme.paddingDivider,
            ),
          }
        ],
      ),
    );
  }
}

class _AnchorWidget extends StatelessWidget {
  const _AnchorWidget({
    required this.text,
    required this.theme,
  });

  final String text;
  final KvSwipeThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.anchorBgColor,
        borderRadius: theme.anchorBorderRadius,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
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

