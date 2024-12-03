import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class UatTag extends StatefulWidget {
  const UatTag({super.key, required this.title});

  final String title;

  @override
  State<UatTag> createState() => UatTagState();
}

class UatTagState extends State<UatTag> {
  KvTagSize size = KvTagSize.medium;
  KvTagStyle style = KvTagStyle.success;
  KvTagType type = KvTagType.text;
  bool showPrefix = false;
  bool showClear = false;
  bool showSelect = false;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  KvTag(
                    label: 'Tag label',
                    size: size,
                    style: style,
                    type: type,
                    assetPrefixIcon: showPrefix
                        ? KvSvgAsset(
                            Assets.iconsBarsProgress,
                          )
                        : null,
                    onClearPressed: showClear ? () {} : null,
                  ),
                  KvTag(
                    label: 'Tag label',
                    size: size,
                    style: style,
                    type: type,
                    assetPrefixIcon: showPrefix
                        ? KvSvgAsset(
                            Assets.iconsBarsProgress,
                          )
                        : null,
                    onSelectPressed: showSelect
                        ? () {
                            print('onSelectPressed');
                          }
                        : null,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              RadioGroup<KvTagSize>(
                title: 'Size',
                initialValue: KvTagSize.medium,
                items: KvTagSize.values,
                onChanged: (value) {
                  setState(() => size = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvTagStyle>(
                title: 'Style',
                initialValue: KvTagStyle.success,
                items: KvTagStyle.values,
                onChanged: (value) {
                  setState(() => style = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvTagType>(
                title: 'Type',
                initialValue: KvTagType.text,
                items: KvTagType.values,
                onChanged: (value) {
                  setState(() => type = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showPrefix,
                content: 'Show prefix',
                onChanged: (value) {
                  setState(() => showPrefix = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showClear,
                content: 'Show clear',
                onChanged: (value) {
                  setState(() => showClear = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showSelect,
                content: 'Show select',
                onChanged: (value) {
                  setState(() => showSelect = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
