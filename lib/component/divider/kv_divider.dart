import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

enum KvDividerOrientation {
  vertical,
  horizontal,
}

class KvDivider extends StatelessWidget {
  const KvDivider({
    super.key,
    this.orientation = KvDividerOrientation.horizontal,
    this.thickness = 1.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.color,
  });

  final KvDividerOrientation orientation;
  final double thickness;
  final double indent;
  final double endIndent;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color ?? KvDesignSystem().dividerBlock),
      width: _width,
      height: _height,
      margin: _margin,
    );
  }

  double? get _width {
    switch (orientation) {
      case KvDividerOrientation.vertical:
        return thickness;
      case KvDividerOrientation.horizontal:
        return null;
    }
  }

  double? get _height {
    switch (orientation) {
      case KvDividerOrientation.vertical:
        return null;
      case KvDividerOrientation.horizontal:
        return thickness;
    }
  }

  EdgeInsets get _margin {
    switch (orientation) {
      case KvDividerOrientation.vertical:
        return EdgeInsets.only(
          top: indent,
          bottom: endIndent,
        );
      case KvDividerOrientation.horizontal:
        return EdgeInsets.only(
          left: indent,
          right: endIndent,
        );
    }
  }
}
