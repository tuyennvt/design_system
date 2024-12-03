import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  const CircleButton({super.key, required this.title});

  final String title;

  @override
  State<CircleButton> createState() => CircleButtonState();
}

class CircleButtonState extends State<CircleButton> {
  KvCircleButtonSize buttonSize = KvCircleButtonSize.medium;
  KvCircleButtonVariant buttonVariant = KvCircleButtonVariant.primary;
  KvCircleButtonStyle buttonStyle = KvCircleButtonStyle.text;
  bool enabled = true;
  bool showBadge = true;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  KvCircleButton(
                    buttonSize: buttonSize,
                    buttonVariant: buttonVariant,
                    buttonStyle: buttonStyle,
                    onPressed: enabled ? () {} : null,
                    assetIcon: KvSvgAsset(
                      'assets/icons/bars-progress.svg',
                    ),
                    badgeDot: showBadge ? const KvBadgeDot() : null,
                  ),
                  KvCircleButton(
                    buttonSize: buttonSize,
                    buttonVariant: buttonVariant,
                    buttonStyle: buttonStyle,
                    onPressed: enabled ? () {} : null,
                    assetIcon: KvSvgAsset(
                      'assets/icons/bars-progress.svg',
                    ),
                    badge: showBadge
                        ? const KvBadge(
                            value: '1',
                            variant: KvBadgeVariant.danger,
                          )
                        : null,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCircleButtonSize>(
                title: 'Size',
                initialValue: KvCircleButtonSize.medium,
                items: KvCircleButtonSize.values,
                onChanged: (value) {
                  setState(() => buttonSize = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCircleButtonVariant>(
                title: 'Variant',
                initialValue: KvCircleButtonVariant.primary,
                items: KvCircleButtonVariant.values,
                onChanged: (value) {
                  setState(() => buttonVariant = value);
                },
              ),
              const SizedBox(height: 16),
              RadioGroup<KvCircleButtonStyle>(
                title: 'Style',
                initialValue: KvCircleButtonStyle.text,
                items: KvCircleButtonStyle.values,
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
                value: showBadge,
                content: 'Show Badge',
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
