import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class UatAlert extends StatefulWidget {
  const UatAlert({super.key, required this.title});

  final String title;

  @override
  State<UatAlert> createState() => UatAlertState();
}

class UatAlertState extends State<UatAlert> {
  KvAlertStyle alertStyle = KvAlertStyle.defaultAlert;
  bool showContent = true;
  bool showPrefixIcon = true;
  bool showAction = true;

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KvAlert(
                alertStyle: alertStyle,
                title: 'Title',
                content: showContent
                    ? 'Mii là một chú mèo nhỏ, đi lạc, từng được người vợ đã mất của ông Kyoichi chăm sóc nhưng ông Kyoichi lại không thích Mii vì chú hay quậy phá, quẩn quanh nhà và đứng trước bàn thờ Phật. Cho đến một ngày, Mii không xuất hiện nữa. Trong sự cô đơn, trống vắng của tuổi già lúc này, ông Kyoichi lại đi tìm Mii.'
                    : null,
                assetPrefixIcon: showPrefixIcon
                    ? KvSvgAsset(
                        Assets.iconsBarsProgress,
                      )
                    : null,
                actionLabel: showAction ? 'Action' : null,
                onActionPressed: () {},
              ),
              const SizedBox(height: 16),
              RadioGroup<KvAlertStyle>(
                title: 'Style',
                initialValue: KvAlertStyle.defaultAlert,
                items: KvAlertStyle.values,
                onChanged: (value) {
                  setState(() => alertStyle = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showContent,
                content: 'Show content',
                onChanged: (value) {
                  setState(() => showContent = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showPrefixIcon,
                content: 'Show prefix icon',
                onChanged: (value) {
                  setState(() => showPrefixIcon = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showAction,
                content: 'Show action',
                onChanged: (value) {
                  setState(() => showAction = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
