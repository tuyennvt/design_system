import 'package:example/swipe/kv_swipe_theme_data.dart';
import 'package:flutter/material.dart';

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
      child: Row(
        children: _itemWidgets,
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
        Expanded(
          child: _ItemWidget(
            label: itemLabels[i],
            theme: _theme,
            enabled: widget.onChanged != null,
            onPressed: () => _onItemPressed.call(item),
            selected: item == _itemSelected,
          ),
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
      child: Container(
        alignment: Alignment.center,
        decoration: selected
            ? BoxDecoration(
                color: theme.anchorBgColor,
                borderRadius: theme.anchorBorderRadius,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0000000F),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                  ),
                ],
              )
            : null,
        child: Text(
          label,
          style: selected ? theme.anchorLabelStyle : theme.labelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// if (visibleDivider) ...{
// KvDivider(
// orientation: KvDividerOrientation.vertical,
// indent: theme.dividerPadding,
// endIndent: theme.dividerPadding,
// color: theme.dividerColor,
// ),
// }

// class _AnchorWidget extends StatelessWidget {
//   const _AnchorWidget({
//     required this.text,
//     required this.theme,
//   });
//
//   final String text;
//   final KvSwipeThemeData theme;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: theme.anchorBgColor,
//         borderRadius: theme.anchorBorderRadius,
//         boxShadow: const [
//           BoxShadow(
//             color: Color(0x1A000000),
//             offset: Offset(0, 4),
//             blurRadius: 4,
//           ),
//         ],
//       ),
//       width: theme.widthKnob,
//       height: theme.heightKnob,
//       child: Text(
//         text,
//         style: theme.textStyle.copyWith(color: theme.knobTextColor),
//       ),
//     );
//   }
// }
