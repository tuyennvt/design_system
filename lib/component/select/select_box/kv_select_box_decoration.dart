// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
//
// const BoxConstraints defaultSelectBoxIconConstraints = BoxConstraints(
//   minWidth: KvDesignSystem().sizeSize16,
//   maxWidth: KvDesignSystem().sizeSize16,
//   minHeight: KvDesignSystem().sizeSize16,
//   maxHeight: KvDesignSystem().sizeSize16,
// );
//
// class KvSelectBoxDecoration {
//   const KvSelectBoxDecoration({
//     required this.labelText,
//     this.secondaryLabelText,
//     this.assetPrefixIcon,
//     this.prefixIconConstraints = defaultSelectBoxIconConstraints,
//     this.assetSuffixIcon,
//     this.suffixIconConstraints = defaultSelectBoxIconConstraints,
//     this.helperText,
//     this.errorText,
//   }) : assert(
//           !(helperText != null && errorText != null),
//           'Declaring both helperText and errorText is not supported.',
//         );
//
//   final String labelText;
//   final String? secondaryLabelText;
//   final KvSvgAsset? assetPrefixIcon;
//   final BoxConstraints prefixIconConstraints;
//   final KvSvgAsset? assetSuffixIcon;
//   final BoxConstraints suffixIconConstraints;
//   final String? helperText;
//   final String? errorText;
//
//   KvSelectBoxDecoration copyWith({
//     String? labelText,
//     String? secondaryLabelText,
//     KvSvgAsset? assetPrefixIcon,
//     BoxConstraints? prefixIconConstraints,
//     KvSvgAsset? assetSuffixIcon,
//     BoxConstraints? suffixIconConstraints,
//     String? helperText,
//     String? errorText,
//   }) {
//     return KvSelectBoxDecoration(
//       labelText: labelText ?? this.labelText,
//       secondaryLabelText: secondaryLabelText ?? this.secondaryLabelText,
//       assetPrefixIcon: assetPrefixIcon ?? this.assetPrefixIcon,
//       prefixIconConstraints:
//           prefixIconConstraints ?? this.prefixIconConstraints,
//       assetSuffixIcon: assetSuffixIcon ?? this.assetSuffixIcon,
//       suffixIconConstraints:
//           suffixIconConstraints ?? this.suffixIconConstraints,
//       helperText: helperText ?? this.helperText,
//       errorText: errorText ?? this.errorText,
//     );
//   }
// }
