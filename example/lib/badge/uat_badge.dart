import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatBadge extends StatefulWidget {
  const UatBadge({super.key, required this.title});

  final String title;

  @override
  State<UatBadge> createState() => UatBadgeState();
}

class UatBadgeState extends State<UatBadge> {
  KvBadgeSize size = KvBadgeSize.medium;
  KvBadgeVariant variant = KvBadgeVariant.primary;
  KvBadgeStyle style = KvBadgeStyle.solid;
  bool enabled = true;

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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                alignment: Alignment.center,
                color: Colors.grey[200],
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KvBadge(
                      size: size,
                      variant: variant,
                      style: style,
                      enable: enabled,
                      value: '1',
                    ),
                    const SizedBox(width: 24),
                    KvBadge(
                      size: size,
                      variant: variant,
                      style: style,
                      enable: enabled,
                      value: '99+',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              RadioGroup<KvBadgeSize>(
                title: 'Size',
                initialValue: KvBadgeSize.medium,
                items: KvBadgeSize.values,
                onChanged: (value) {
                  setState(() => size = value);
                },
              ),
              const SizedBox(height: 24),
              RadioGroup<KvBadgeVariant>(
                title: 'Variant',
                initialValue: KvBadgeVariant.primary,
                items: KvBadgeVariant.values,
                onChanged: (value) {
                  setState(() => variant = value);
                },
              ),
              const SizedBox(height: 24),
              RadioGroup<KvBadgeStyle>(
                title: 'Style',
                initialValue: KvBadgeStyle.solid,
                items: KvBadgeStyle.values,
                onChanged: (value) {
                  setState(() => style = value);
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
            ],
          ),
        ),
      ),
    );
  }
}
