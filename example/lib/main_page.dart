import 'package:example/kv_chip.dart';
import 'package:example/kv_chip_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:kv_design_system/foundation/kv_icons.dart';
import 'package:kv_design_system/kv_design_system.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _checkBoxValue = false;
  var _radioValue = 0;
  var priceSwitch = KvPriceSwitchValue.primary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              KvChip(
                prefixIcon: KvIcons.bell_regular,
                category: KvChipCategory.suggestion,
                selected: false,
                enabled: false,
                style: KvChipStyle.faded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
