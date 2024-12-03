import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:employee_flutter_design_system/utils.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';

class UatInputBox extends StatefulWidget {
  const UatInputBox({super.key, required this.title});

  final String title;

  @override
  State<UatInputBox> createState() => UatInputBoxState();
}

class UatInputBoxState extends State<UatInputBox> {
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
                KvInputBox(
                  enabled: enabled,
                  readOnly: readOnly,
                  decoration: KvInputDecoration(
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
