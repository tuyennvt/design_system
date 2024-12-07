// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
// import '../../../generated/assets.dart';
// import '../../../utils.dart';
//
// class KvSearchBoxDecorator {
//   KvSearchBoxDecorator({
//     required this.valueOfController,
//     required this.enabled,
//     required this.size,
//     required this.state,
//     required this.decoration,
//   });
//
//   final String valueOfController;
//   final bool enabled;
//   final KvSearchBoxSize size;
//   final KvSearchBoxState state;
//   final KvSearchBoxDecoration decoration;
//
//   Color get backgroundColor {
//     if (!enabled) {
//       if (decoration.onLayer2) {
//         return KvDesignSystem().dataInputSearchColorBgOnLayer2;
//       }
//       return KvDesignSystem().dataInputSearchColorBgDefault;
//     }
//     switch (state) {
//       case KvSearchBoxState.idle:
//         if (decoration.onLayer2) {
//           return KvDesignSystem().dataInputSearchColorBgOnLayer2;
//         }
//         return KvDesignSystem().dataInputSearchColorBgDefault;
//       case KvSearchBoxState.focused:
//         return KvDesignSystem().dataInputInputColorBgActivated;
//       case KvSearchBoxState.filled:
//         if (decoration.onLayer2) {
//           return KvDesignSystem().dataInputSearchColorBgOnLayer2;
//         }
//         return KvDesignSystem().dataInputSearchColorBgDefault;
//     }
//   }
//
//   Color get iconColor {
//     if (!enabled) {
//       return KvDesignSystem().dataInputInputColorIconDisabled;
//     }
//     return KvDesignSystem().colorIconNeutralLabel;
//   }
//
//   TextStyle get textStyle {
//     switch (size) {
//       case KvSearchBoxSize.small:
//         return KvTextStyles.cationRe();
//       case KvSearchBoxSize.medium:
//         return KvTextStyles.bodyMRE();
//     }
//   }
//
//   TextStyle get hintStyle {
//     Color hintColor;
//     if (!enabled) {
//       hintColor = KvDesignSystem().dataInputInputColorTextDisabled;
//     } else {
//       hintColor = KvDesignSystem().dataInputInputColorTextPlaceholder;
//     }
//     switch (size) {
//       case KvSearchBoxSize.small:
//         return KvTextStyles.cationRe(color: hintColor);
//       case KvSearchBoxSize.medium:
//         return KvTextStyles.bodyMRE(color: hintColor);
//     }
//   }
//
//   BorderRadius get borderRadius {
//     switch (decoration.shape) {
//       case KvSearchBoxShape.box:
//         return const BorderRadius.all(Radius.circular(8));
//       case KvSearchBoxShape.pill:
//         return const BorderRadius.all(Radius.circular(50));
//     }
//   }
//
//   Border? get border {
//     if (!enabled) {
//       return null;
//     }
//     switch (state) {
//       case KvSearchBoxState.idle:
//         return null;
//       case KvSearchBoxState.focused:
//         return const Border.fromBorderSide(
//           BorderSide(
//             color: KvDesignSystem().dataInputInputColorBorderActivated,
//           ),
//         );
//       case KvSearchBoxState.filled:
//         return null;
//     }
//   }
//
//   Widget get prefix {
//     if (!decoration.showSearchIcon) {
//       return const SizedBox();
//     }
//     return Padding(
//       padding: const EdgeInsets.only(right: 8),
//       child: KvIcon(
//         icon: KvSvgAsset(
//           Assets.iconsMagnifyingGlass,
//           assetPackage: packageRoot,
//         ),
//         color: iconColor,
//         size: KvIconSize.size16,
//       ),
//     );
//   }
//
//   InputDecoration get materialInputDecoration {
//     return InputDecoration.collapsed(
//       hintText: decoration.hintText,
//       hintStyle: hintStyle,
//       enabled: enabled,
//     );
//   }
// }
