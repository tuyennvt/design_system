import 'package:flutter/material.dart';

import 'd_tokens.dart';
import '../kv_design_token.dart';


enum KvIconSize {
  iconXXXS(DTokens.iconXXXSSize),
  iconXXS(DTokens.iconXXSSize),
  iconXS(DTokens.iconXSSize),
  iconS(DTokens.iconSSize),
  iconM(DTokens.iconMSize),
  iconL(DTokens.iconLSize),
  iconXL(DTokens.iconXLSize);

  const KvIconSize(this.value);

  final int value;
}

class KvIcon extends StatelessWidget {
  const KvIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = KvIconSize.iconS,
  });

  final IconData icon;
  final Color? color;
  final KvIconSize size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size.value.toDouble(),
      color: color,
    );
  }
}
