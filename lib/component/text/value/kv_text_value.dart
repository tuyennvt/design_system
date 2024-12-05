// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
// import '../../../utils.dart';
//
// enum KvTextValueHierarchy {
//   titleMedium,
//   titleLarge,
//   primaryRegular,
//   primaryMedium,
//   secondaryRegular,
//   secondaryMedium,
// }
//
// class KvTextValue extends StatelessWidget
//     implements KvListTileFirstValueInstance, KvListTileSecondValueInstance {
//   const KvTextValue({
//     super.key,
//     this.hierarchy = KvTextValueHierarchy.primaryMedium,
//     this.value,
//     this.primarySupport,
//     this.secondarySupport,
//   });
//
//   final KvTextValueHierarchy hierarchy;
//   final String? value;
//   final KvTextSupportWidget? primarySupport;
//   final KvTextSupportWidget? secondarySupport;
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       alignment: WrapAlignment.end,
//       runSpacing: 4,
//       crossAxisAlignment: WrapCrossAlignment.center,
//       children: [
//         if (secondarySupport != null) ...{
//           secondarySupport!,
//           const SizedBox(width: 4),
//         },
//         if (primarySupport != null) ...{
//           primarySupport!,
//           const SizedBox(width: 4),
//         },
//         if (value.isNotNullOrEmpty) ...{
//           Text(
//             value!,
//             style: valueStyle,
//           )
//         },
//       ],
//     );
//   }
//
//   Color get valueColor {
//     switch (hierarchy) {
//       case KvTextValueHierarchy.titleMedium:
//       case KvTextValueHierarchy.titleLarge:
//       case KvTextValueHierarchy.primaryRegular:
//       case KvTextValueHierarchy.primaryMedium:
//         return KvDesignSystem().colorTextNeutralBase;
//       case KvTextValueHierarchy.secondaryRegular:
//       case KvTextValueHierarchy.secondaryMedium:
//         return KvDesignSystem().colorTextNeutralSecondary;
//     }
//   }
//
//   TextStyle get valueStyle {
//     TextStyle contentStyle;
//     switch (hierarchy) {
//       case KvTextValueHierarchy.titleMedium:
//         contentStyle = KvTextStyles.titleM();
//         break;
//       case KvTextValueHierarchy.titleLarge:
//         contentStyle = KvTextStyles.titleL();
//         break;
//       case KvTextValueHierarchy.primaryRegular:
//         contentStyle = KvTextStyles.bodyMRE();
//         break;
//       case KvTextValueHierarchy.primaryMedium:
//         contentStyle = KvTextStyles.bodyMMe();
//         break;
//       case KvTextValueHierarchy.secondaryRegular:
//         contentStyle = KvTextStyles.cationRe();
//         break;
//       case KvTextValueHierarchy.secondaryMedium:
//         contentStyle = KvTextStyles.cationMe();
//         break;
//     }
//     return contentStyle.copyWith(color: valueColor);
//   }
// }
