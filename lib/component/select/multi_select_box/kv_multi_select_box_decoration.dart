import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

const BoxConstraints defaultMultiSelectBoxIconConstraints = BoxConstraints(
  minWidth: KvDesignSystem().sizeSize16,
  maxWidth: KvDesignSystem().sizeSize16,
  minHeight: KvDesignSystem().sizeSize16,
  maxHeight: KvDesignSystem().sizeSize16,
);

class KvMultiSelectBoxDecoration {
  const KvMultiSelectBoxDecoration({
    required this.labelText,
    this.secondaryLabelText,
    this.assetPrefixIcon,
    this.prefixIconConstraints = defaultMultiSelectBoxIconConstraints,
    this.assetSuffixIcon,
    this.suffixIconConstraints = defaultMultiSelectBoxIconConstraints,
    this.helperText,
    this.errorText,
  }) : assert(
          !(helperText != null && errorText != null),
          'Declaring both helperText and errorText is not supported.',
        );

  final String labelText;
  final String? secondaryLabelText;
  final KvSvgAsset? assetPrefixIcon;
  final BoxConstraints prefixIconConstraints;
  final KvSvgAsset? assetSuffixIcon;
  final BoxConstraints suffixIconConstraints;
  final String? helperText;
  final String? errorText;

  KvMultiSelectBoxDecoration copyWith({
    String? labelText,
    String? secondaryLabelText,
    KvSvgAsset? assetPrefixIcon,
    BoxConstraints? prefixIconConstraints,
    KvSvgAsset? assetSuffixIcon,
    BoxConstraints? suffixIconConstraints,
    String? helperText,
    String? errorText,
  }) {
    return KvMultiSelectBoxDecoration(
      labelText: labelText ?? this.labelText,
      secondaryLabelText: secondaryLabelText ?? this.secondaryLabelText,
      assetPrefixIcon: assetPrefixIcon ?? this.assetPrefixIcon,
      prefixIconConstraints:
          prefixIconConstraints ?? this.prefixIconConstraints,
      assetSuffixIcon: assetSuffixIcon ?? this.assetSuffixIcon,
      suffixIconConstraints:
          suffixIconConstraints ?? this.suffixIconConstraints,
      helperText: helperText ?? this.helperText,
      errorText: errorText ?? this.errorText,
    );
  }
}
