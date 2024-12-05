// import 'package:flutter/material.dart';
//
// import '../../kv_design_system.dart';
//
// class KvListTileItem extends StatelessWidget {
//   const KvListTileItem({
//     super.key,
//     required this.size,
//     required this.alignment,
//     required this.isLastItem,
//     this.prefix,
//     this.suffix,
//     this.firstContent,
//     this.firstValue,
//     this.secondContent,
//     this.secondValue,
//     this.externalContent,
//   });
//
//   final KvListTileSize size;
//   final KvListTileAlignment alignment;
//   final bool isLastItem;
//   final Widget? prefix;
//   final Widget? suffix;
//   final KvListTileFirstContentInstance? firstContent;
//   final KvListTileFirstValueInstance? firstValue;
//   final KvListTileSecondContentInstance? secondContent;
//   final KvListTileSecondValueInstance? secondValue;
//   final KvListTileExternalContentInstance? externalContent;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints(minHeight: theme.minHeight),
//       child: Row(
//         crossAxisAlignment: theme.crossAxisAlignment,
//         children: [
//           const SizedBox(width: KvDesignSystem().sizeSize16),
//           if (prefix != null) ...{
//             Padding(
//               padding: theme.paddingVertical,
//               child: prefix!,
//             ),
//             const SizedBox(width: KvDesignSystem().sizeSize12),
//           },
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Padding(
//                   padding: theme.paddingVertical,
//                   child: Row(
//                     crossAxisAlignment: theme.crossAxisAlignment,
//                     children: [
//                       Expanded(
//                         child: _ListTile(
//                           firstContent: firstContent,
//                           firstValue: firstValue,
//                           secondContent: secondContent,
//                           secondValue: secondValue,
//                           externalContent: externalContent,
//                         ),
//                       ),
//                       if (suffix != null) ...{
//                         const SizedBox(width: KvDesignSystem().sizeSize12),
//                         suffix!,
//                       },
//                       const SizedBox(width: KvDesignSystem().sizeSize16),
//                     ],
//                   ),
//                 ),
//                 if (!isLastItem) ...{
//                   const KvDivider(),
//                 }
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   KvListTileThemeData get theme => KvListTileThemeData(
//         size: size,
//         alignment: alignment,
//       );
// }
//
// class _ListTile extends StatelessWidget {
//   const _ListTile({
//     this.firstContent,
//     this.firstValue,
//     this.secondContent,
//     this.secondValue,
//     this.externalContent,
//   });
//
//   final KvListTileFirstContentInstance? firstContent;
//   final KvListTileFirstValueInstance? firstValue;
//   final KvListTileSecondContentInstance? secondContent;
//   final KvListTileSecondValueInstance? secondValue;
//   final KvListTileExternalContentInstance? externalContent;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         _FirstWidget(
//           firstContent: firstContent,
//           firstValue: firstValue,
//         ),
//         if ((firstContent != null || firstValue != null) &&
//             (secondContent != null || secondValue != null)) ...{
//           const SizedBox(height: 8),
//         },
//         _SecondWidget(
//           secondContent: secondContent,
//           secondValue: secondValue,
//         ),
//         if ((secondContent != null || secondValue != null) &&
//             externalContent != null) ...{
//           const SizedBox(height: 8),
//         },
//         _ExternalWidget(
//           externalContent: externalContent,
//         ),
//       ],
//     );
//   }
// }
//
// class _FirstWidget extends StatelessWidget {
//   const _FirstWidget({
//     this.firstContent,
//     this.firstValue,
//   });
//
//   final KvListTileFirstContentInstance? firstContent;
//   final KvListTileFirstValueInstance? firstValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         if (firstContent != null) ...{
//           Flexible(
//             child: firstContent!,
//           ),
//         },
//         if (firstValue != null) ...{
//           Flexible(
//             child: firstValue!,
//           ),
//         },
//       ],
//     );
//   }
// }
//
// class _SecondWidget extends StatelessWidget {
//   const _SecondWidget({
//     this.secondContent,
//     this.secondValue,
//   });
//
//   final KvListTileSecondContentInstance? secondContent;
//   final KvListTileSecondValueInstance? secondValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         if (secondContent != null) ...{
//           Flexible(
//             child: secondContent!,
//           ),
//         },
//         if (secondValue != null) ...{
//           Flexible(
//             child: secondValue!,
//           ),
//         },
//       ],
//     );
//   }
// }
//
// class _ExternalWidget extends StatelessWidget {
//   const _ExternalWidget({
//     this.externalContent,
//   });
//
//   final KvListTileExternalContentInstance? externalContent;
//
//   @override
//   Widget build(BuildContext context) {
//     if (externalContent == null) {
//       return const SizedBox();
//     }
//     return externalContent!;
//   }
// }
