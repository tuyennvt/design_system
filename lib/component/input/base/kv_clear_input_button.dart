// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
// import '../../../generated/assets.dart';
// import '../../../utils.dart';
//
// class KvClearInputButton extends StatelessWidget {
//   const KvClearInputButton({
//     super.key,
//     this.visible = false,
//     required this.onPressed,
//   });
//
//   final bool visible;
//   final VoidCallback onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: visible,
//       child: KvMinimumTapArea(
//         onTap: onPressed,
//         child: KvIcon(
//           icon: KvSvgAsset(
//             Assets.iconsCircleXmark,
//             assetPackage: packageRoot,
//           ),
//           size: KvIconSize.size16,
//         ),
//       ),
//     );
//   }
// }
