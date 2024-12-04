import 'package:flutter/material.dart';

import '../../foundation/kv_text_styles.dart';
import '../../kv_design_system.dart';

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
        return KvDesignSystem().bGNeutralFadedDefault;
      case KvBannerType.informationBanner:
        return KvDesignSystem().bGInfoFadedDefault;
      case KvBannerType.warningBanner:
        return KvDesignSystem().bGWarningFadedDefault;
      case KvBannerType.dangerBanner:
        return KvDesignSystem().bGDangerFadedDefault;
    }
  }

  Color get announcementIconColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return KvDesignSystem().iconNeutralonFadedLabel;
      case KvBannerType.informationBanner:
        return KvDesignSystem().iconInfoonFadedLabel;
      case KvBannerType.warningBanner:
        return KvDesignSystem().iconWarningonFadedLabel;
      case KvBannerType.dangerBanner:
        return KvDesignSystem().iconDangeronFadedLabel;
    }
  }

  Color get actionIconColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return KvDesignSystem().iconNeutralonFadedSecondaryAction;
      case KvBannerType.informationBanner:
        return KvDesignSystem().iconInfoonFadedSecondaryAction;
      case KvBannerType.warningBanner:
        return KvDesignSystem().iconWarningonFadedSecondaryAction;
      case KvBannerType.dangerBanner:
        return KvDesignSystem().iconDangeronFadedSecondaryAction;
    }
  }

  Color get contentColor {
    switch (bannerType) {
      case KvBannerType.defaultBanner:
        return KvDesignSystem().textNeutralonFadedSecondary;
      case KvBannerType.informationBanner:
        return KvDesignSystem().textPrimaryonFadedSecondary;
      case KvBannerType.warningBanner:
        return KvDesignSystem().textWarningonFadedSecondary;
      case KvBannerType.dangerBanner:
        return KvDesignSystem().textDangeronFadedSecondary;
    }
  }

  TextStyle get contentTextStyle {
    return KvTextStyles.bodyMRE(color: contentColor);
  }

  EdgeInsets get padding => EdgeInsets.symmetric(
        vertical: KvDesignSystem().bannerPaddingVertical.toDouble(),
        horizontal: KvDesignSystem().bannerPaddingHorizontal.toDouble(),
      );
}
