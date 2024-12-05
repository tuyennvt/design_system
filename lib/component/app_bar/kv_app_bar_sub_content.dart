// import 'package:flutter/material.dart';
//
// import '../../kv_design_system.dart';
// import '../../generated/assets.dart';
// import '../../utils.dart';
//
// class KvAppBarSubContent extends StatelessWidget {
//   const KvAppBarSubContent({
//     super.key,
//     required this.subContent,
//     this.showIcon = true,
//     this.onPressed,
//   });
//
//   final String subContent;
//   final bool showIcon;
//   final VoidCallback? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             subContent,
//             style: KvTextStyles.cationRe(
//               color: KvDesignSystem().colorTextNeutralSecondary,
//             ),
//           ),
//           if (showIcon) ...{
//             Padding(
//               padding: const EdgeInsets.only(left: 4.0),
//               child: KvIcon(
//                 icon: KvSvgAsset(
//                   Assets.iconsCaretDown,
//                   assetPackage: packageRoot,
//                 ),
//                 color: KvDesignSystem().colorTextNeutralSecondary,
//                 size: KvIconSize.size16,
//               ),
//             ),
//           },
//         ],
//       ),
//     );
//   }
// }
