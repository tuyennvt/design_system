import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/d_tokens.dart';

enum KvBannerType {
  defaultBanner,
  informationBanner,
  warningBanner,
  dangerBanner,
}

class KvBannerThemeData {
  KvBannerThemeData(this.bannerType);

  final KvBannerType bannerType;

  Color get backgroundColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return DTokens.bGNeutralFadedDefault;
      case KvBannerType.informationBanner:
        return DTokens.bGInfoFadedDefault;
      case KvBannerType.warningBanner:
        return DTokens.bGWarningFadedDefault;
      case KvBannerType.dangerBanner:
        return DTokens.bGDangerFadedDefault;
    }
  }

  Color get announcementIconColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return DTokens.iconNeutralonFadedLabel;
      case KvBannerType.informationBanner:
        return DTokens.iconInfoonFadedLabel;
      case KvBannerType.warningBanner:
        return DTokens.iconWarningonFadedLabel;
      case KvBannerType.dangerBanner:
        return DTokens.iconDangeronFadedLabel;
    }
  }

  Color get actionIconColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return DTokens.iconNeutralonFadedSecondaryAction;
      case KvBannerType.informationBanner:
        return DTokens.iconInfoonFadedSecondaryAction;
      case KvBannerType.warningBanner:
        return DTokens.iconWarningonFadedSecondaryAction;
      case KvBannerType.dangerBanner:
        return DTokens.iconDangeronFadedSecondaryAction;
    }
  }

  Color get contentColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return DTokens.textNeutralonFadedSecondary;
      case KvBannerType.informationBanner:
        return DTokens.textPrimaryonFadedSecondary;
      case KvBannerType.warningBanner:
        return DTokens.textWarningonFadedSecondary;
      case KvBannerType.dangerBanner:
        return DTokens.textDangeronFadedSecondary;
    }
  }

  TextStyle get contentTextStyle {
    return KvTextStyles.bodyMRE(color: contentColor);
  }

  EdgeInsets get padding => EdgeInsets.symmetric(
        vertical: DTokens.bannerPaddingVertical.toDouble(),
        horizontal: DTokens.bannerPaddingHorizontal.toDouble(),
      );
}
