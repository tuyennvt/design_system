import 'package:example/swipe/kv_swipe.dart';
import 'package:flutter/material.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              KvSwipe(
                itemSelected: '1',
                items: ['1', '2', '3'],
                labelBuilder: (items) {
                  return items;
                },
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
