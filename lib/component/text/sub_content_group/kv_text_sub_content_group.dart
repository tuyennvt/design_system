// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
//
// class KvTextSubContentGroup extends StatelessWidget
//     implements KvListTileFirstContentInstance, KvListTileSecondContentInstance {
//   const KvTextSubContentGroup({
//     super.key,
//     required this.subContents,
//   });
//
//   final List<KvTextSubContent> subContents;
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       runSpacing: 4,
//       crossAxisAlignment: WrapCrossAlignment.center,
//       children: children,
//     );
//   }
//
//   List<Widget> get children {
//     List<Widget> children = [];
//     for (int i = 0; i < subContents.length; i++) {
//       final tag = subContents[i];
//       if (i == subContents.length - 1) {
//         children.add(tag);
//       } else {
//         children.addAll(
//           [
//             tag,
//             dotDivider,
//           ],
//         );
//       }
//     }
//     return children;
//   }
//
//   Widget get dotDivider {
//     return const Padding(
//       padding: EdgeInsets.symmetric(horizontal: 4.0),
//       child: KvDotDivider(
//         size: KvDotDividerSize.small,
//       ),
//     );
//   }
// }
