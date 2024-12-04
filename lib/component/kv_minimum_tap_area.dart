import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class KvMinimumTapArea extends SingleChildRenderObjectWidget {
  const KvMinimumTapArea({
    Key? key,
    required Widget child,
    required this.onTap,
  }) : super(key: key, child: child);

  final VoidCallback onTap;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _KvMinimumTapAreaRenderBox(onTap: onTap);
  }
}

class _KvGestureArenaMember extends GestureArenaMember {
  _KvGestureArenaMember({required this.onTap});

  final VoidCallback onTap;

  @override
  void acceptGesture(int key) {
    onTap();
  }

  @override
  void rejectGesture(int key) {}
}

class _KvMinimumTapAreaRenderBox extends RenderBox
    with RenderObjectWithChildMixin<RenderBox> {
  _KvMinimumTapAreaRenderBox({required this.onTap});

  final VoidCallback onTap;

  @override
  void performLayout() {
    child!.layout(constraints, parentUsesSize: true);
    size = child!.size;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      final BoxParentData childParentData = child!.parentData! as BoxParentData;
      context.paintChild(child!, childParentData.offset + offset);
    }
  }

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    if (event is PointerDownEvent) {
      _KvGestureArenaMember member = _KvGestureArenaMember(onTap: onTap);
      GestureBinding.instance.gestureArena.add(event.pointer, member);
    } else if (event is PointerUpEvent) {
      GestureBinding.instance.gestureArena.sweep(event.pointer);
    }
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  bool hitTestChildren(BoxHitTestResult result, {Offset? position}) {
    visitChildren((child) {
      if (child is RenderBox) {
        final BoxParentData parentData = child.parentData! as BoxParentData;
        if (child.hitTest(result, position: position! - parentData.offset)) {
          return;
        }
      }
    });
    return false;
  }

  @override
  bool hitTest(BoxHitTestResult result, {Offset? position}) {
    EdgeInsets tapPadding = _calculatePadding;
    Rect expandRect = Rect.fromLTWH(
      0 - tapPadding.left,
      0 - tapPadding.top,
      size.width + tapPadding.right + tapPadding.left,
      size.height + tapPadding.top + tapPadding.bottom,
    );
    if (expandRect.contains(position!)) {
      bool hitTarget =
          hitTestChildren(result, position: position) || hitTestSelf(position);
      if (hitTarget) {
        result.add(BoxHitTestEntry(this, position));
        return true;
      }
    }
    return false;
  }

  EdgeInsets get _calculatePadding {
    double verticalPadding = (40 - size.height) / 2;
    double horizontalPadding = (40 - size.width) / 2;
    return EdgeInsets.symmetric(
      vertical: verticalPadding,
      horizontal: horizontalPadding,
    );
  }
}
