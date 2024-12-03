import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/generated/assets.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatAppBar extends StatefulWidget {
  const UatAppBar({super.key, required this.title});

  final String title;

  @override
  State<UatAppBar> createState() => UatAppBarState();
}

class UatAppBarState extends State<UatAppBar> {
  bool visibleBack = false;
  bool revert = false;
  bool showAction = false;
  bool showBottom = false;

  List<KvButton> actions = [
    KvCircleButton(
      onPressed: () {},
      assetIcon: KvSvgAsset(
        Assets.iconsBarsProgress,
      ),
    ),
    KvInlineButton(
      text: 'Action',
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DTokens.colorBgLayerLevel2,
      appBar: KvAppBar(
        visibleBack: true,
        onBackPressed: () {
          Navigator.pop(context);
        },
        child: KvAppBarPage(
          pageTitle: widget.title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarLogo(
                  revert: revert,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarLogo(
                  logoType: KvAppBarLogoType.software,
                  revert: revert,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarLogo(
                  logoType: KvAppBarLogoType.finance,
                  revert: revert,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarLogo(
                  logoType: KvAppBarLogoType.connect,
                  revert: revert,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarLogo(
                  logoType: KvAppBarLogoType.connect,
                  revert: revert,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarTitle(pageTitle: 'Page title'),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarMore(
                  pageTitle: 'Page title',
                  subContent: KvAppBarSubContent(
                    subContent: 'Sub content',
                  ),
                  avatarUrl: null,
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarPage(
                  pageTitle: 'Page title',
                  subContent: KvAppBarSubContent(
                    subContent: 'Sub content',
                    showIcon: false,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarSearchBox(
                  searchBox: KvSearchBox(
                    decoration: KvSearchBoxDecoration(
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              KvAppBar(
                visibleBack: visibleBack,
                onBackPressed: () {
                  Navigator.pop(context);
                },
                actions: showAction ? actions : null,
                bottom: showBottom ? bottom : null,
                child: KvAppBarBack(
                  inlineButton: KvInlineButton(
                    text: 'Action',
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    KvCheckbox(
                      value: visibleBack,
                      content: 'Show back',
                      onChanged: (value) {
                        setState(() => visibleBack = value);
                      },
                    ),
                    const SizedBox(height: 16),
                    KvCheckbox(
                      value: showAction,
                      content: 'Show action',
                      onChanged: (value) {
                        setState(() => showAction = value);
                      },
                    ),
                    const SizedBox(height: 16),
                    KvCheckbox(
                      value: showBottom,
                      content: 'Show bottom',
                      onChanged: (value) {
                        setState(() => showBottom = value);
                      },
                    ),
                    const SizedBox(height: 16),
                    KvCheckbox(
                      value: revert,
                      content: 'Revert',
                      onChanged: (value) {
                        setState(() => revert = value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get bottom {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: const Text(
        'This is sub header',
      ),
    );
  }
}
