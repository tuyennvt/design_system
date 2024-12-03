import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:employee_flutter_design_system/utils.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class UatMultiSelectBox extends StatefulWidget {
  const UatMultiSelectBox({super.key, required this.title});

  final String title;

  @override
  State<UatMultiSelectBox> createState() => UatMultiSelectBoxState();
}

class UatMultiSelectBoxState extends State<UatMultiSelectBox> {
  bool showRequiredText = false;
  bool showPrefixIcon = false;
  bool showSuffixIcon = false;
  bool enabled = true;
  bool readOnly = false;

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
                KvMultiSelectBox(
                  enabled: enabled,
                  readOnly: readOnly,
                  decoration: KvMultiSelectBoxDecoration(
                    labelText: 'Label Text',
                    secondaryLabelText: showRequiredText ? '*' : null,
                    assetPrefixIcon: showPrefixIcon
                        ? KvSvgAsset(
                            Assets.iconsBarsProgress,
                          )
                        : null,
                    assetSuffixIcon: showSuffixIcon
                        ? KvSvgAsset(
                            Assets.iconsBarsProgress,
                          )
                        : null,
                  ),
                  validator: (value) {
                    if (value.isNullOrEmpty && showRequiredText) {
                      return 'Please enter value';
                    }
                    return null;
                  },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  onSelected: () async {
                    return await showDialog<List<String>?>(
                      context: context,
                      builder: (context) {
                        return const _MultiSelectDialog();
                      },
                    );
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
                  value: readOnly,
                  content: 'Read only',
                  onChanged: (value) {
                    setState(() => readOnly = value);
                  },
                ),
                const SizedBox(height: 24),
                KvCheckbox(
                  value: showRequiredText,
                  content: 'Show required text',
                  onChanged: (value) {
                    setState(() => showRequiredText = value);
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
                  value: showSuffixIcon,
                  content: 'Show suffix icon',
                  onChanged: (value) {
                    setState(() => showSuffixIcon = value);
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

class _MultiSelectDialog extends StatefulWidget {
  const _MultiSelectDialog();

  @override
  State<_MultiSelectDialog> createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<_MultiSelectDialog> {
  final List<bool> selected = [
    false,
    false,
    false,
    false,
  ];
  List<String> data = [
    'Select option 1',
    'Select option 2',
    'Select option 3',
    'Select option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return KvDialog(
      content: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: KvCheckbox(
              value: selected[index],
              onChanged: (value) {
                setState(() {
                  selected[index] = value;
                });
              },
              content: data[index],
            ),
          );
        },
        itemCount: data.length,
      ),
      dialogAction: KvDialogAction.actionDefault(
        labelPositive: 'OK',
        onPositivePressed: () {
          List<String> selectedData = [];
          for (int i = 0; i < selected.length; i++) {
            if (selected[i]) {
              selectedData.add(data[i]);
            }
          }
          Navigator.pop(context, selectedData);
        },
        labelNegative: 'Cancel',
        onNegativePressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
