import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

import '../utils/radio_group.dart';

class UatSearchBox extends StatefulWidget {
  const UatSearchBox({super.key, required this.title});

  final String title;

  @override
  State<UatSearchBox> createState() => UatSearchBoxState();
}

class UatSearchBoxState extends State<UatSearchBox> {
  bool showSearchIcon = true;
  bool onLayer2 = false;
  KvSearchBoxShape shape = KvSearchBoxShape.box;
  KvSearchBoxSize size = KvSearchBoxSize.medium;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                KvSearchBox(
                  decoration: KvSearchBoxDecoration(
                    hintText: 'Placeholder',
                    showSearchIcon: showSearchIcon,
                    onLayer2: onLayer2,
                    shape: shape,
                  ),
                  size: size,
                  enabled: enabled,
                ),
                const SizedBox(height: 24),
                RadioGroup<KvSearchBoxShape>(
                  title: 'Shape',
                  initialValue: KvSearchBoxShape.box,
                  items: KvSearchBoxShape.values,
                  onChanged: (value) {
                    setState(() => shape = value);
                  },
                ),
                const SizedBox(height: 24),
                RadioGroup<KvSearchBoxSize>(
                  title: 'Size',
                  initialValue: KvSearchBoxSize.medium,
                  items: KvSearchBoxSize.values,
                  onChanged: (value) {
                    setState(() => size = value);
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
                  value: onLayer2,
                  content: 'onLayer2',
                  onChanged: (value) {
                    setState(() => onLayer2 = value);
                  },
                ),
                const SizedBox(height: 24),
                KvCheckbox(
                  value: showSearchIcon,
                  content: 'Show search icon',
                  onChanged: (value) {
                    setState(() => showSearchIcon = value);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
