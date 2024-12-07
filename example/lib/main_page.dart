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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Tuyen',
                  labelStyle: KvTextStyles.bodyMME().copyWith(inherit: true),
                  floatingLabelStyle:
                      KvTextStyles.captionRE().copyWith(inherit: true),
                ),
                style: KvTextStyles.bodyMME().copyWith(inherit: true),
              ),
              Text(
                'Tuyen',
                style: KvTextStyles.captionRE(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
