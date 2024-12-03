import 'package:flutter/material.dart';

import '../../../employee_flutter_design_system.dart';

const BoxConstraints defaultInputIconConstraints = BoxConstraints(
  minWidth: DTokens.sizeSize20,
  maxWidth: DTokens.sizeSize20,
  minHeight: DTokens.sizeSize20,
  maxHeight: DTokens.sizeSize20,
);

class KvInputDecoration {
  const KvInputDecoration({
    this.labelText,
    this.secondaryLabelText,
    this.assetPrefixIcon,
    this.prefixIconConstraints = defaultInputIconConstraints,
    this.assetSuffixIcon,
    this.suffixIconConstraints = defaultInputIconConstraints,
    this.suffixText,
    this.helperText,
    this.errorText,
  })  : assert(
          !(helperText != null && errorText != null),
          'Declaring both helperText and errorText is not supported.',
        ),
        assert(
          !(assetSuffixIcon != null && suffixText != null),
          'Declaring both suffixIcon and suffixText is not supported.',
        );

  final String? labelText;
  final String? secondaryLabelText;
  final KvSvgAsset? assetPrefixIcon;
  final BoxConstraints prefixIconConstraints;
  final KvSvgAsset? assetSuffixIcon;
  final BoxConstraints suffixIconConstraints;
  final String? suffixText;
  final String? helperText;
  final String? errorText;

  KvInputDecoration copyWith({
    String? labelText,
    String? secondaryLabelText,
    KvSvgAsset? assetPrefixIcon,
    BoxConstraints? prefixIconConstraints,
    KvSvgAsset? assetSuffixIcon,
    BoxConstraints? suffixIconConstraints,
    String? suffixText,
    String? helperText,
    String? errorText,
  }) {
    return KvInputDecoration(
      labelText: labelText ?? this.labelText,
      secondaryLabelText: secondaryLabelText ?? this.secondaryLabelText,
      assetPrefixIcon: assetPrefixIcon ?? this.assetPrefixIcon,
      prefixIconConstraints:
          prefixIconConstraints ?? this.prefixIconConstraints,
      assetSuffixIcon: assetSuffixIcon ?? this.assetSuffixIcon,
      suffixIconConstraints:
          suffixIconConstraints ?? this.suffixIconConstraints,
      suffixText: suffixText ?? this.suffixText,
      helperText: helperText ?? this.helperText,
      errorText: errorText ?? this.errorText,
    );
  }
}
