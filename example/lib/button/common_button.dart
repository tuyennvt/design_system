import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton({super.key, required this.title});

  final String title;

  @override
  State<CommonButton> createState() => CommonButtonState();
}

class CommonButtonState extends State<CommonButton> {
  KvCommonButtonSize buttonSize = KvCommonButtonSize.medium;
  KvCommonButtonVariant buttonVariant = KvCommonButtonVariant.primary;
  KvCommonButtonStyle buttonStyle = KvCommonButtonStyle.solidButton;
  bool enabled = true;
  bool showLabel = true;
  bool showIcon = false;
  bool showBadge = false;

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
              const SizedBox(height: 16),
              KvCommonButton(
                buttonSize: buttonSize,
                buttonVariant: buttonVariant,
                buttonStyle: buttonStyle,
                onPressed: enabled ? () {} : null,
                assetIcon: showIcon
                    ? KvSvgAsset(
                        'assets/icons/bars-progress.svg',
                      )
                    : null,
                label: showLabel ? 'Label Button' : null,
                badgeText: showBadge ? '99+' : null,
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCommonButtonSize>(
                title: 'Size',
                initialValue: KvCommonButtonSize.medium,
                items: KvCommonButtonSize.values,
                onChanged: (value) {
                  setState(() => buttonSize = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCommonButtonVariant>(
                title: 'Variant',
                initialValue: KvCommonButtonVariant.primary,
                items: KvCommonButtonVariant.values,
                onChanged: (value) {
                  setState(() => buttonVariant = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCommonButtonStyle>(
                title: 'Style',
                initialValue: KvCommonButtonStyle.solidButton,
                items: KvCommonButtonStyle.values,
                onChanged: (value) {
                  setState(() => buttonStyle = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: enabled,
                content: 'Enabled',
                onChanged: (value) {
                  setState(() => enabled = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showIcon,
                content: 'Show icon',
                onChanged: (value) {
                  setState(() => showIcon = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showLabel,
                content: 'Show label',
                onChanged: (value) {
                  setState(() => showLabel = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showBadge,
                content: 'Show badge',
                onChanged: (value) {
                  setState(() => showBadge = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
