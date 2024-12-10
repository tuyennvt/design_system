import 'package:example/sheet/kv_sheet.dart';
import 'package:flutter/material.dart';
import 'package:kv_design_system/foundation/kv_icons.dart';
import 'package:kv_design_system/kv_design_system.dart';

class SwipeValue {
  final String label;
  final int value;

  const SwipeValue({
    required this.label,
    required this.value,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwipeValue && label == other.label && value == other.value;

  @override
  int get hashCode => label.hashCode ^ value.hashCode;
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _checkBoxValue = false;
  var _radioValue = 0;
  var priceSwitch = KvPriceSwitchValue.primary;
  var swipeValue = SwipeValue(label: '1', value: 1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      SwipeValue(label: 'Label 1', value: 1),
      SwipeValue(label: 'Label 2', value: 2),
      SwipeValue(label: 'Label 3', value: 3),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              KvCommonButton(
                onPressed: () {
                  KvSheet.show(context, );
                },
                label: 'OK',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
