import '../utils.dart';

class KvSvgAsset {
  KvSvgAsset(
    this.assetName, {
    this.assetPackage = '',
  }) : assert(assetName.endsWith('.svg'), 'Required asset is SVG');

  final String assetName;
  final String assetPackage;

  String get value => '$assetPackage$assetName';
}

extension KvSvgAssetExtension on KvSvgAsset? {
  bool get isNullOrEmpty {
    return this == null || this?.assetName.isNullOrEmpty == true;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }
}
