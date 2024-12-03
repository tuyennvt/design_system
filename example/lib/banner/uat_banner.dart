import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/generated/assets.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatBanner extends StatefulWidget {
  const UatBanner({super.key, required this.title});

  final String title;

  @override
  State<UatBanner> createState() => UatBannerState();
}

class UatBannerState extends State<UatBanner> {
  KvBannerType type = KvBannerType.defaultBanner;
  bool showAnnouncementIcon = true;
  bool showActionButton = false;
  bool showActionIcon = true;
  int maxLine = 1;

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
              KvBanner(
                bannerType: type,
                showAnnouncementIcon: showAnnouncementIcon,
                actionButton: showActionButton
                    ? KvInlineButton(
                        text: 'Action',
                        onPressed: () {},
                      )
                    : null,
                maxLine: maxLine,
                assetActionIcon: showActionIcon
                    ? KvSvgAsset(
                        Assets.iconsBarsProgress,
                      )
                    : null,
                onActionIconPressed: () {
                  print('Tuyen');
                },
                content:
                    'Mii là một chú mèo nhỏ, đi lạc, từng được người vợ đã mất của ông Kyoichi chăm sóc nhưng ông Kyoichi lại không thích Mii vì chú hay quậy phá, quẩn quanh nhà và đứng trước bàn thờ Phật. Cho đến một ngày, Mii không xuất hiện nữa. Trong sự cô đơn, trống vắng của tuổi già lúc này, ông Kyoichi lại đi tìm Mii',
              ),
              const SizedBox(height: 24),
              RadioGroup<KvBannerType>(
                title: 'Type',
                initialValue: KvBannerType.defaultBanner,
                items: KvBannerType.values,
                onChanged: (value) {
                  setState(() => type = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showAnnouncementIcon,
                content: 'Show announcement icon',
                onChanged: (value) {
                  setState(() => showAnnouncementIcon = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showActionButton,
                content: 'Show action button',
                onChanged: (value) {
                  setState(() => showActionButton = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showActionIcon,
                content: 'Show action icon',
                onChanged: (value) {
                  setState(() => showActionIcon = value);
                },
              ),
              const SizedBox(height: 24),
              RadioGroup<int>(
                title: 'Max Line',
                initialValue: 1,
                items: const [
                  1,
                  2,
                ],
                onChanged: (value) {
                  setState(() => maxLine = value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
