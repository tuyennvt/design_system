import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class InlineButton extends StatefulWidget {
  const InlineButton({super.key, required this.title});

  final String title;

  @override
  State<InlineButton> createState() => InlineButtonState();
}

class InlineButtonState extends State<InlineButton> {
  KvInlineButtonSize buttonSize = KvInlineButtonSize.medium;
  KvInlineButtonVariant buttonVariant = KvInlineButtonVariant.primary;
  bool enabled = true;
  bool showPrefixIcon = false;

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
              KvInlineButton(
                buttonSize: buttonSize,
                buttonVariant: buttonVariant,
                onPressed: enabled ? () {} : null,
                text: 'Action',
                assetPrefixIcon: showPrefixIcon
                    ? KvSvgAsset(
                        'assets/icons/bars-progress.svg',
                      )
                    : null,
              ),
              const SizedBox(height: 16),
              RadioGroup<KvInlineButtonSize>(
                title: 'Size',
                initialValue: KvInlineButtonSize.medium,
                items: KvInlineButtonSize.values,
                onChanged: (value) {
                  setState(() => buttonSize = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvInlineButtonVariant>(
                title: 'Variant',
                initialValue: KvInlineButtonVariant.primary,
                items: KvInlineButtonVariant.values,
                onChanged: (value) {
                  setState(() => buttonVariant = value);
                },
              ),
              const SizedBox(height: 16),
              KvCheckbox(
                value: enabled,
                content: 'Enabled',
                onChanged: (value) {
                  setState(() => enabled = value);
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
            ],
          ),
        ),
      ),
    );
  }
}
