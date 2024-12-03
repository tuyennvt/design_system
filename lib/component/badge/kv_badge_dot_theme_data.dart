import 'package:flutter/material.dart';

import '../../foundation/d_tokens.dart';

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
          return DTokens.bGStatusAlertDefault;
        }
        return DTokens.bGStatusAlertDisabled;
      case KvBadgeDotStatus.completed:
        if (enabled) {
          return DTokens.bGStatusCompleteDefault;
        }
        return DTokens.bGStatusCompleteDisabled;
      case KvBadgeDotStatus.pending:
        if (enabled) {
          return DTokens.bGStatusPendingDefault;
        }
        return DTokens.bGStatusPendingDisabled;
      case KvBadgeDotStatus.processing:
        if (enabled) {
          return DTokens.bGStatusProcessDefault;
        }
        return DTokens.bGStatusProcessDisabled;
      case KvBadgeDotStatus.inactive:
        if (enabled) {
          return DTokens.bGStatusInActiveDefault;
        }
        return DTokens.bGStatusInActiveDisabled;
    }
  }

  BorderSide get border {
    return const BorderSide(
      color: DTokens.badgeDotStroke,
      width: DTokens.badgeDotStrokeWidth,
    );
  }

  Size get size {
    return Size(
      DTokens.badgeDotSizeM.toDouble(),
      DTokens.badgeDotSizeM.toDouble(),
    );
  }
}
