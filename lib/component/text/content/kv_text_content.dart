// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
// import '../../../kv_design_system.dart';
//
// enum KvTextContentHierarchy {
//   primary,
//   secondary,
// }
//
// enum KvTextContentWeight {
//   regular,
//   medium,
//   semiBold,
// }
//
// class KvTextContent extends StatelessWidget
//     implements
//         KvListTileFirstContentInstance,
//         KvListTileSecondContentInstance,
//         KvListTileExternalContentInstance {
//   const KvTextContent({
//     super.key,
//     this.hierarchy = KvTextContentHierarchy.primary,
//     this.weight = KvTextContentWeight.regular,
//     required this.content,
//     this.primarySupport,
//     this.secondarySupport,
//   });
//
//   final KvTextContentHierarchy hierarchy;
//   final KvTextContentWeight weight;
//   final String content;
//   final KvTextSupportWidget? primarySupport;
//   final KvTextSupportWidget? secondarySupport;
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       runSpacing: 4,
//       crossAxisAlignment: WrapCrossAlignment.center,
//       children: [
//         Text(
//           content,
//           style: contentStyle,
//         ),
//         if (primarySupport != null) ...{
//           const SizedBox(width: 4),
//           primarySupport!,
//         },
//         if (secondarySupport != null) ...{
//           const SizedBox(width: 4),
//           secondarySupport!,
//         },
//       ],
//     );
//   }
//
//   Color get contentColor {
//     switch (hierarchy) {
//       case KvTextContentHierarchy.primary:
//         return KvDesignSystem().textNeutralBase;
//       case KvTextContentHierarchy.secondary:
//         return KvDesignSystem().textNeutralSecondary;
//     }
//   }
//
//   FontWeight get contentFontWeight {
//     switch (weight) {
//       case KvTextContentWeight.regular:
//         return FontWeight.w400;
//       case KvTextContentWeight.medium:
//         return FontWeight.w500;
//       case KvTextContentWeight.semiBold:
//         return FontWeight.w600;
//     }
//   }
//
//   TextStyle get contentStyle {
//     TextStyle contentStyle;
//     switch (hierarchy) {
//       case KvTextContentHierarchy.primary:
//         contentStyle = KvTextStyles.freeStyle(
//           fontSize: 14,
//           height: 20 / 14,
//         );
//         break;
//       case KvTextContentHierarchy.secondary:
//         contentStyle = KvTextStyles.freeStyle(
//           fontSize: 12,
//           height: 16 / 12,
//         );
//         break;
//     }
//     return contentStyle.copyWith(
//       fontWeight: contentFontWeight,
//       color: contentColor,
//     );
//   }
// }
