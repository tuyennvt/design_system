import 'package:flutter/material.dart';

import '../../foundation/kv_text_styles.dart';
import '../../kv_design_system.dart';

enum KvAlertStyle {
  defaultAlert,
  informationAlert,
  warningAlert,
  dangerAlert,
  successAlert,
  promotionAlert,
}

class KvAlertThemeData {
  KvAlertThemeData(this.alertStyle);

  final KvAlertStyle alertStyle;

  Color get background {
    switch (alertStyle) {
      case KvAlertStyle.defaultAlert:
        return KvDesignSystem().alertColorBGNeutral;
      case KvAlertStyle.informationAlert:
        return KvDesignSystem().alertColorBGInfo;
      case KvAlertStyle.warningAlert:
        return KvDesignSystem().alertColorBGWarning;
      case KvAlertStyle.dangerAlert:
        return KvDesignSystem().alertColorBGDanger;
      case KvAlertStyle.successAlert:
        return KvDesignSystem().alertColorBGSuccess;
      case KvAlertStyle.promotionAlert:
        return KvDesignSystem().alertColorBGPromotion;
    }
  }

  Color get borderColor {
    switch (alertStyle) {
      case KvAlertStyle.defaultAlert:
        return KvDesignSystem().alertColorBorderNeutral;
      case KvAlertStyle.informationAlert:
        return KvDesignSystem().alertColorBorderInfo;
      case KvAlertStyle.warningAlert:
        return KvDesignSystem().alertColorBorderWarning;
      case KvAlertStyle.dangerAlert:
        return KvDesignSystem().alertColorBorderDanger;
      case KvAlertStyle.successAlert:
        return KvDesignSystem().alertColorBorderSuccess;
      case KvAlertStyle.promotionAlert:
        return KvDesignSystem().alertColorBorderPromotion;
    }
  }

  Border get border {
    return Border.all(
      color: borderColor,
      width: KvDesignSystem().alertStroke.toDouble(),
    );
  }

  BorderRadius get borderRadius {
    return BorderRadius.all(
      Radius.circular(KvDesignSystem().alertRadius.toDouble()),
    );
  }

  Color get prefixTitleIconColor {
    return KvDesignSystem().iconNeutralLabel;
  }

  TextStyle get titleTextStyle {
    return KvTextStyles.titleM();
  }

  TextStyle get contentTextStyle {
    return KvTextStyles.cationRE();
  }

  EdgeInsets get padding {
    return EdgeInsets.symmetric(
      vertical: KvDesignSystem().alertPaddingVertical.toDouble(),
      horizontal: KvDesignSystem().alertPaddingHorizontal.toDouble(),
    );
  }

  double get gutter => KvDesignSystem().alertGutterVertical.toDouble();

  BoxDecoration get decoration {
    return BoxDecoration(
      color: background,
      border: border,
      borderRadius: borderRadius,
    );
  }

  Color get prefixIconColor {
    switch (alertStyle) {
      case KvAlertStyle.defaultAlert:
        return KvDesignSystem().alertColorIconNeutral;
      case KvAlertStyle.informationAlert:
        return KvDesignSystem().alertColorIconInfo;
      case KvAlertStyle.warningAlert:
        return KvDesignSystem().alertColorIconWarning;
      case KvAlertStyle.dangerAlert:
        return KvDesignSystem().alertColorIconDanger;
      case KvAlertStyle.successAlert:
        return KvDesignSystem().alertColorIconSuccess;
      case KvAlertStyle.promotionAlert:
        return KvDesignSystem().alertColorIconPromotion;
    }
  }
}
