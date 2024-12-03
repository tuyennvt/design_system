import 'package:flutter/material.dart';

import '../text/kv_text.dart';
import 'kv_badge_dot_theme_data.dart';

class KvBadgeDot extends StatelessWidget implements KvTextSupportWidget {
  const KvBadgeDot({
    super.key,
    this.status = KvBadgeDotStatus.alert,
    this.enabled = true,
  });

  final KvBadgeDotStatus status;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.color,
        border: Border.fromBorderSide(theme.border),
        shape: BoxShape.circle,
      ),
      width: theme.size.width,
      height: theme.size.height,
    );
  }

  KvBadgeDotThemeData get theme => KvBadgeDotThemeData(
        status: status,
        enabled: enabled,
      );

  @override
  KvTextSupportWidgetType get supportWidgetType =>
      KvTextSupportWidgetType.badgeDot;
}
