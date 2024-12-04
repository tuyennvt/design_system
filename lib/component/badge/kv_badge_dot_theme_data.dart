import 'package:flutter/material.dart';

import '../../kv_design_system.dart';

enum KvBadgeDotStatus {
  alert,
  completed,
  pending,
  processing,
  inactive,
}

class KvBadgeDotThemeData {
  const KvBadgeDotThemeData({
    required this.status,
    required this.enabled,
  });

  final KvBadgeDotStatus status;
  final bool enabled;

  Color get color {
    switch (status) {
      case KvBadgeDotStatus.alert:
        if (enabled) {
          return KvDesignSystem().bGStatusAlertDefault;
        }
        return KvDesignSystem().bGStatusAlertDisabled;
      case KvBadgeDotStatus.completed:
        if (enabled) {
          return KvDesignSystem().bGStatusCompleteDefault;
        }
        return KvDesignSystem().bGStatusCompleteDisabled;
      case KvBadgeDotStatus.pending:
        if (enabled) {
          return KvDesignSystem().bGStatusPendingDefault;
        }
        return KvDesignSystem().bGStatusPendingDisabled;
      case KvBadgeDotStatus.processing:
        if (enabled) {
          return KvDesignSystem().bGStatusProcessDefault;
        }
        return KvDesignSystem().bGStatusProcessDisabled;
      case KvBadgeDotStatus.inactive:
        if (enabled) {
          return KvDesignSystem().bGStatusInActiveDefault;
        }
        return KvDesignSystem().bGStatusInActiveDisabled;
    }
  }

  BorderSide get border {
    return BorderSide(
      color: KvDesignSystem().badgeDotStroke,
      width: KvDesignSystem().badgeDotStrokeWidth,
    );
  }

  Size get size {
    return Size(
      KvDesignSystem().badgeDotSizeM.toDouble(),
      KvDesignSystem().badgeDotSizeM.toDouble(),
    );
  }
}
