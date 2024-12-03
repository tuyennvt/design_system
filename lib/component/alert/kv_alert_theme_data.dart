import 'package:flutter/material.dart';

import '../../employee_flutter_design_system.dart';
import '../../foundation/d_tokens.dart';

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
        return DTokens.alertColorBGNeutral;
      case KvAlertStyle.informationAlert:
        return DTokens.alertColorBGInfo;
      case KvAlertStyle.warningAlert:
        return DTokens.alertColorBGWarning;
      case KvAlertStyle.dangerAlert:
        return DTokens.alertColorBGDanger;
      case KvAlertStyle.successAlert:
        return DTokens.alertColorBGSuccess;
      case KvAlertStyle.promotionAlert:
        return DTokens.alertColorBGPromotion;
    }
  }

  Color get borderColor {
    switch (alertStyle) {
      case KvAlertStyle.defaultAlert:
        return DTokens.alertColorBorderNeutral;
      case KvAlertStyle.informationAlert:
        return DTokens.alertColorBorderInfo;
      case KvAlertStyle.warningAlert:
        return DTokens.alertColorBorderWarning;
      case KvAlertStyle.dangerAlert:
        return DTokens.alertColorBorderDanger;
      case KvAlertStyle.successAlert:
        return DTokens.alertColorBorderSuccess;
      case KvAlertStyle.promotionAlert:
        return DTokens.alertColorBorderPromotion;
    }
  }

  Border get border {
    return Border.all(
      color: borderColor,
      width: DTokens.alertStroke.toDouble(),
    );
  }

  BorderRadius get borderRadius {
    return BorderRadius.all(
      Radius.circular(DTokens.alertRadius.toDouble()),
    );
  }

  Color get prefixTitleIconColor {
    return DTokens.iconNeutralLabel;
  }

  TextStyle get titleTextStyle {
    return KvTextStyles.titleM();
  }

  TextStyle get contentTextStyle {
    return KvTextStyles.cationRE();
  }

  EdgeInsets get padding {
    return EdgeInsets.symmetric(
      vertical: DTokens.alertPaddingVertical.toDouble(),
      horizontal: DTokens.alertPaddingHorizontal.toDouble(),
    );
  }

  double get gutter => DTokens.alertGutterVertical.toDouble();

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
        return DTokens.alertColorIconNeutral;
      case KvAlertStyle.informationAlert:
        return DTokens.alertColorIconInfo;
      case KvAlertStyle.warningAlert:
        return DTokens.alertColorIconWarning;
      case KvAlertStyle.dangerAlert:
        return DTokens.alertColorIconDanger;
      case KvAlertStyle.successAlert:
        return DTokens.alertColorIconSuccess;
      case KvAlertStyle.promotionAlert:
        return DTokens.alertColorIconPromotion;
    }
  }
}
