import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

enum KvTagGroupSize {
  small,
  medium,
  large,
}

class KvTagGroup extends StatelessWidget implements KvTextSupportWidget {
  const KvTagGroup({
    super.key,
    required this.tags,
    required this.size,
  });

  final List<KvTag> tags;
  final KvTagGroupSize size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 4,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: children,
    );
  }

  List<Widget> get children {
    List<Widget> children = [];
    for (int i = 0; i < tags.length; i++) {
      final tag = tags[i];
      if (i == tags.length - 1) {
        children.add(tag);
      } else {
        children.addAll(
          [
            tag,
            dotDivider,
          ],
        );
      }
    }
    return children;
  }

  Widget get dotDivider {
    Widget widget;
    switch (size) {
      case KvTagGroupSize.small:
        widget = const KvDotDivider(size: KvDotDividerSize.small);
        break;
      case KvTagGroupSize.medium:
        widget = const KvDotDivider();
        break;
      case KvTagGroupSize.large:
        widget = const KvDotDivider(size: KvDotDividerSize.large);
        break;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: widget,
    );
  }

  @override
  KvTextSupportWidgetType get supportWidgetType =>
      KvTextSupportWidgetType.tagGroup;
}
