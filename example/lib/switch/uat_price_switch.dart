import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

import '../utils/radio_group.dart';

class UatPriceSwitch extends StatefulWidget {
  const UatPriceSwitch({super.key, required this.title});

  final String title;

  @override
  State<UatPriceSwitch> createState() => UatPriceSwitchState();
}

class UatPriceSwitchState extends State<UatPriceSwitch> {
  KvPriceSwitchSize size = KvPriceSwitchSize.medium;
  KvPriceSwitchStyle style = KvPriceSwitchStyle.primaryStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KvAppBar(
        visibleBack: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
        child: KvAppBarPage(
          pageTitle: widget.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KvPriceSwitch(
                size: size,
                style: style,
                primaryText: 'VND',
                secondaryText: '%',
                onChanged: (String value) {},
              ),
              const SizedBox(height: 24),
              RadioGroup<KvPriceSwitchSize>(
                title: 'Size',
                initialValue: KvPriceSwitchSize.medium,
                items: KvPriceSwitchSize.values,
                onChanged: (value) {
                  setState(() => size = value);
                },
              ),
              const SizedBox(height: 24),
              RadioGroup<KvPriceSwitchStyle>(
                title: 'Style',
                initialValue: KvPriceSwitchStyle.primaryStyle,
                items: KvPriceSwitchStyle.values,
                onChanged: (value) {
                  setState(() => style = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
