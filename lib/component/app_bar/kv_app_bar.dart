// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../../kv_design_system.dart';
// import '../../generated/assets.dart';
// import '../../kv_design_system.dart';
// import '../../utils.dart';
//
// enum KvAppBarType {
//   logo,
//   title,
//   more,
//   page,
//   searchBox,
//   back,
// }
//
// abstract class KvAppBarChild {
//   KvAppBarType get appBarType;
// }
//
// class KvAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const KvAppBar({
//     super.key,
//     this.visibleBack = false,
//     this.onBackPressed,
//     required this.child,
//     this.actions,
//     this.bottom,
//   });
//
//   final bool visibleBack;
//   final VoidCallback? onBackPressed;
//   final KvAppBarChild child;
//   final List<KvButton>? actions;
//   final Widget? bottom;
//
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         // set status bar color for iOS
//         color: appBarColor,
//         borderRadius: borderRadius,
//       ),
//       child: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle(
//           // set status bar color for Android
//           statusBarColor: appBarColor,
//           statusBarBrightness: Brightness.light,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//         child: SafeArea(
//           bottom: false,
//           child: SizedBox(
//             height: appBarHeight,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 SizedBox(
//                   height: kToolbarHeight,
//                   child: Row(
//                     children: [
//                       const SizedBox(width: KvDesignSystem().sizeSize16),
//                       if (visibleBack) ...{
//                         _BackButton(
//                           onBackPressed: onBackPressed,
//                         ),
//                         const SizedBox(width: KvDesignSystem().sizeSize12),
//                       },
//                       Expanded(child: _Child(child: child)),
//                       _Actions(actions: actions),
//                       const SizedBox(width: KvDesignSystem().sizeSize16),
//                     ],
//                   ),
//                 ),
//                 if (bottom != null) ...{
//                   SizedBox(
//                     width: double.maxFinite,
//                     height: KvDesignSystem().sizeSize40,
//                     child: bottom!,
//                   ),
//                 },
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   double get appBarHeight {
//     double height = kToolbarHeight;
//     if (bottom != null) {
//       height += KvDesignSystem().sizeSize40;
//     }
//     return height;
//   }
//
//   Color get appBarColor {
//     if (child.appBarType == KvAppBarType.logo) {
//       final appBarLogo = child as KvAppBarLogo;
//       if (appBarLogo.revert) {
//         return Colors.transparent;
//       }
//     }
//     return KvDesignSystem().colorBgLayerLevel0;
//   }
//
//   BorderRadius get borderRadius {
//     return const BorderRadius.only(
//       bottomLeft: Radius.circular(KvDesignSystem().sizeSize12),
//       bottomRight: Radius.circular(KvDesignSystem().sizeSize12),
//     );
//   }
//
//   @override
//   Size get preferredSize => Size(double.maxFinite, appBarHeight);
// }
//
// class _BackButton extends StatelessWidget {
//   const _BackButton({this.onBackPressed});
//
//   final VoidCallback? onBackPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return KvMinimumTapArea(
//       onTap: () {
//         onBackPressed?.call();
//       },
//       child: KvIcon(
//         icon: KvSvgAsset(
//           Assets.iconsChevronLeft,
//           assetPackage: packageRoot,
//         ),
//         color: KvDesignSystem().colorTextNeutralBase,
//         size: KvIconSize.size20,
//       ),
//     );
//   }
// }
//
// class _Child extends StatelessWidget {
//   const _Child({
//     required this.child,
//   });
//
//   final KvAppBarChild child;
//
//   @override
//   Widget build(BuildContext context) {
//     switch (child.appBarType) {
//       case KvAppBarType.logo:
//         return child as KvAppBarLogo;
//       case KvAppBarType.title:
//         return child as KvAppBarTitle;
//       case KvAppBarType.more:
//         return child as KvAppBarMore;
//       case KvAppBarType.page:
//         return child as KvAppBarPage;
//       case KvAppBarType.searchBox:
//         return child as KvAppBarSearchBox;
//       case KvAppBarType.back:
//         return child as KvAppBarBack;
//     }
//   }
// }
//
// class _Actions extends StatelessWidget {
//   const _Actions({this.actions});
//
//   final List<KvButton>? actions;
//
//   @override
//   Widget build(BuildContext context) {
//     if (actions.isNotNullOrEmpty) {
//       return Padding(
//         padding: const EdgeInsets.only(left: 8.0),
//         child: Wrap(
//           spacing: 8.0,
//           crossAxisAlignment: WrapCrossAlignment.center,
//           children: actions!,
//         ),
//       );
//     }
//     return const SizedBox();
//   }
// }
