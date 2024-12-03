import 'package:flutter/cupertino.dart';

class KvShadow {
  static BoxShadow level1() => const BoxShadow(
        color: Color(0x14000000),
        offset: Offset(0, 1),
        blurRadius: 4,
        spreadRadius: -1,
      );

  static BoxShadow level2() => const BoxShadow(
        color: Color(0x0f000000),
        offset: Offset(0, 2),
        blurRadius: 6,
        spreadRadius: 1,
      );

  static BoxShadow level3() => const BoxShadow(
        color: Color(0x0f000000),
        offset: Offset(0, 4),
        blurRadius: 12,
        spreadRadius: 2,
      );

  static BoxShadow level4() => const BoxShadow(
        color: Color(0x0f000000),
        offset: Offset(0, -8),
        blurRadius: 20,
        spreadRadius: -4,
      );

  static BoxShadow level5() => const BoxShadow(
        color: Color(0x0f000000),
        offset: Offset(0, 8),
        blurRadius: 20,
        spreadRadius: -4,
      );

  static BoxShadow level8() => const BoxShadow(
        color: Color(0x14000000),
        offset: Offset(0, 1),
        blurRadius: 4,
        spreadRadius: -1,
      );
}
