import 'package:example/swipe/kv_swipe_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:kv_design_system/kv_design_system.dart';

typedef KvSwipeLabelBuilder<T> = List<String> Function(List<T> items);

const _kAnimationDuration = Duration(milliseconds: 250);

class KvSwipe<T> extends StatelessWidget {
  const KvSwipe({
    super.key,
    this.style = KvSwipeStyle.primary,
    required this.itemSelected,
    required this.items,
    required this.labelBuilder,
    this.onItemPressed,
  });

  final KvSwipeStyle style;
  final T itemSelected;
  final List<T> items;
  final KvSwipeLabelBuilder<T> labelBuilder;
  final Function(T value)? onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _theme.padding,
      decoration: BoxDecoration(
        color: _theme.bgColor,
        borderRadius: _theme.borderRadius,
      ),
      height: _theme.height,
      child: Row(
        children: _children,
      ),
    );
  }

  KvSwipeThemeData get _theme => KvSwipeThemeData(style: style);

  List<Widget> get _children {
    final children = <Widget>[];
    final itemLabels = labelBuilder(items);
    for (int index = 0; index < items.length; index++) {
      final item = items[index];
      children.add(
        Expanded(
          child: _ItemWidget(
            label: itemLabels[index],
            theme: _theme,
            enabled: onItemPressed != null,
            onPressed: () => onItemPressed?.call(item),
            selected: item == itemSelected,
          ),
        ),
      );
      children.add(
        _DividerWidget(
          theme: _theme,
          visible: _visibleDivider(index, _indexSelected),
        ),
      );
    }
    return children;
  }

  bool _visibleDivider(int index, int indexSelected) =>
      !(index == items.length - 1 ||
          index == indexSelected ||
          index == indexSelected - 1);

  int get _indexSelected => items.indexOf(itemSelected);
}

class _ItemWidget<T> extends StatelessWidget {
  const _ItemWidget({
    super.key,
    required this.label,
    required this.theme,
    required this.selected,
    required this.enabled,
    required this.onPressed,
  });

  final String label;
  final KvSwipeThemeData theme;
  final bool selected;
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
      child: AnimatedContainer(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? theme.anchorBgColor : Colors.transparent,
          borderRadius: theme.anchorBorderRadius,
          boxShadow: selected
              ? const [
                  BoxShadow(
                    color: Color(0x0000000F),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  ),
                ]
              : null,
        ),
        duration: _kAnimationDuration,
        child: AnimatedDefaultTextStyle(
          style: selected ? theme.anchorLabelStyle : theme.labelStyle,
          textAlign: TextAlign.center,
          duration: _kAnimationDuration,
          child: Text(label),
        ),
      ),
    );
  }
}

class _DividerWidget extends StatelessWidget {
  const _DividerWidget({
    required this.theme,
    required this.visible,
  });

  final KvSwipeThemeData theme;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return KvDivider(
      orientation: KvDividerOrientation.vertical,
      indent: theme.dividerPadding,
      endIndent: theme.dividerPadding,
      color: visible ? theme.dividerColor : Colors.transparent,
    );
  }
}
