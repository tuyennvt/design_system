import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

import '../utils/radio_group.dart';

class ListTileData {
  final String firstContent;
  final String firstValue;
  final String secondContent;
  final String secondValue;
  final String externalContent;

  const ListTileData({
    required this.firstContent,
    required this.firstValue,
    required this.secondContent,
    required this.secondValue,
    required this.externalContent,
  });
}

const List<ListTileData> dataTest = [
  ListTileData(
    firstContent: 'First Content 1',
    firstValue: 'First Value 1',
    secondContent: 'Second Content 1',
    secondValue: 'Second Value 1',
    externalContent: 'External Content 1',
  ),
  ListTileData(
    firstContent: 'First Content 2',
    firstValue: 'First Value 2',
    secondContent: 'Second Content 2',
    secondValue: 'Second Value 2',
    externalContent: 'External Content 2',
  ),
  ListTileData(
    firstContent: 'First Content 3',
    firstValue: 'First Value 3',
    secondContent: 'Second Content 3',
    secondValue: 'Second Value 3',
    externalContent: 'External Content 3',
  ),
];

class UatList extends StatefulWidget {
  const UatList({super.key, required this.title});

  final String title;

  @override
  State<UatList> createState() => UatListState();
}

class UatListState extends State<UatList> {
  bool showFirstContent = true;
  bool showFirstValue = true;
  bool showSecondContent = false;
  bool showSecondValue = false;
  bool showExternalContent = false;
  bool showPrefix = true;
  bool showSuffix = false;
  KvListTileLayout layout = KvListTileLayout.center;
  KvListTileSize size = KvListTileSize.medium;
  KvListTileAlignment alignment = KvListTileAlignment.middle;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final listTileData = dataTest[index];
                return KvListTile(
                  layout: layout,
                  size: size,
                  alignment: alignment,
                  prefix: showPrefix
                      ? const KvCacheNetworkImage(
                          imageType: KvCacheNetworkImageType.avatar,
                          imageUrl: null,
                        )
                      : null,
                  suffix: showSuffix
                      ? const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: DTokens
                              .colorIconNeutralSecondaryAction,
                        )
                      : null,
                  firstContent: showFirstContent
                      ? KvTextContent(
                          content: listTileData.firstContent,
                          weight: KvTextContentWeight.medium,
                          primarySupport: const KvBadge(
                            value: '1',
                          ),
                        )
                      : null,
                  firstValue: showFirstValue
                      ? KvTextValue(
                          value: listTileData.firstValue,
                        )
                      : null,
                  secondContent: showSecondContent
                      ? KvTextContent(
                          content: listTileData.secondContent,
                        )
                      : null,
                  secondValue: showSecondValue
                      ? KvTextValue(
                          value: listTileData.secondValue,
                        )
                      : null,
                  externalContent: showExternalContent
                      ? KvTextContent(
                          content: listTileData.externalContent,
                        )
                      : null,
                  isLastItem: index == dataTest.length - 1,
                );
              },
              itemCount: dataTest.length,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  RadioGroup<KvListTileSize>(
                    title: 'Size',
                    initialValue: KvListTileSize.medium,
                    items: KvListTileSize.values,
                    onChanged: (value) {
                      setState(() => size = value);
                    },
                  ),
                  const SizedBox(height: 16),
                  RadioGroup<KvListTileLayout>(
                    title: 'Layout',
                    initialValue: KvListTileLayout.center,
                    items: KvListTileLayout.values,
                    onChanged: (value) {
                      setState(() => layout = value);
                    },
                  ),
                  const SizedBox(height: 16),
                  RadioGroup<KvListTileAlignment>(
                    title: 'Alignment',
                    initialValue: KvListTileAlignment.middle,
                    items: KvListTileAlignment.values,
                    onChanged: (value) {
                      setState(() => alignment = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showFirstContent,
                    content: 'Show First Content',
                    onChanged: (value) {
                      setState(() => showFirstContent = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showFirstValue,
                    content: 'Show First Value',
                    onChanged: (value) {
                      setState(() => showFirstValue = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showSecondContent,
                    content: 'Show Second Content',
                    onChanged: (value) {
                      setState(() => showSecondContent = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showSecondValue,
                    content: 'Show Second Value',
                    onChanged: (value) {
                      setState(() => showSecondValue = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showExternalContent,
                    content: 'Show External Content',
                    onChanged: (value) {
                      setState(() => showExternalContent = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showPrefix,
                    content: 'Show Prefix',
                    onChanged: (value) {
                      setState(() => showPrefix = value);
                    },
                  ),
                  const SizedBox(height: 24),
                  KvCheckbox(
                    value: showSuffix,
                    content: 'Show Suffix',
                    onChanged: (value) {
                      setState(() => showSuffix = value);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
