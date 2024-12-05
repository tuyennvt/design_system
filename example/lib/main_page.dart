import 'package:flutter/material.dart';
import 'package:kv_design_system/foundation/kv_icons.dart';
import 'package:kv_design_system/kv_design_system.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
          child: KvIcon(icon: KvIcons.angle_down_regular),
        ),
      ),
    );
  }
}
