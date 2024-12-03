import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/generated/assets.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatIconContainer extends StatefulWidget {
  const UatIconContainer({super.key, required this.title});

  final String title;

  @override
  State<UatIconContainer> createState() => UatIconContainerState();
}

class UatIconContainerState extends State<UatIconContainer> {
  KvIconContainerSize iconContainerSize = KvIconContainerSize.medium;
  KvIconContainerStyle iconContainerStyle = KvIconContainerStyle.neutral;

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KvIconContainer(
                  iconContainerSize: iconContainerSize,
                  iconContainerStyle: iconContainerStyle,
                  assetIcon: KvSvgAsset(
                    Assets.iconsBarsProgress,
                  )),
              const SizedBox(height: 24),
              RadioGroup<KvIconContainerSize>(
                title: 'Size',
                initialValue: KvIconContainerSize.medium,
                items: KvIconContainerSize.values,
                onChanged: (value) {
                  setState(() => iconContainerSize = value);
                },
              ),
              const SizedBox(height: 24),
              RadioGroup<KvIconContainerStyle>(
                title: 'Style',
                initialValue: KvIconContainerStyle.neutral,
                items: KvIconContainerStyle.values,
                onChanged: (value) {
                  setState(() => iconContainerStyle = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
