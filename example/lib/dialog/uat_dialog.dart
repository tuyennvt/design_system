import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:example/utils/radio_group.dart';
import 'package:flutter/material.dart';

class UatDialog extends StatefulWidget {
  const UatDialog({super.key, required this.title});

  final String title;

  @override
  State<UatDialog> createState() => UatDialogState();
}

class UatDialogState extends State<UatDialog> {
  KvDialogActionType dialogActionType = KvDialogActionType.actionDefault;
  bool showTitle = true;

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KvCommonButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return KvDialog(
                        title: showTitle ? 'Popup Title' : null,
                        onClosePressed: () {
                          Navigator.pop(context);
                        },
                        content: Container(
                          color: Colors.lightGreen,
                          height: 100,
                          child: Text(
                            'This is a popup content',
                            style: KvTextStyles.bodyL(),
                          ),
                        ),
                        dialogAction: dialogAction,
                      );
                    },
                  );
                },
                label: 'Show popup',
              ),
              const SizedBox(height: 24),
              RadioGroup<KvDialogActionType>(
                title: 'Type',
                initialValue: KvDialogActionType.actionDefault,
                items: KvDialogActionType.values,
                onChanged: (value) {
                  setState(() => dialogActionType = value);
                },
              ),
              const SizedBox(height: 24),
              KvCheckbox(
                value: showTitle,
                content: 'Show title',
                onChanged: (value) {
                  setState(() => showTitle = value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  KvDialogAction get dialogAction {
    switch (dialogActionType) {
      case KvDialogActionType.actionDefault:
        return KvDialogAction.actionDefault(
          labelPositive: 'Primary',
          onPositivePressed: () {},
          labelNegative: 'Secondary',
          onNegativePressed: () {},
        );
      case KvDialogActionType.actionVerticalDefault:
        return KvDialogAction.actionVerticalDefault(
          labelPositive: 'Primary',
          onPositivePressed: () {},
          labelNegative: 'Secondary',
          onNegativePressed: () {},
        );
      case KvDialogActionType.actionHighest:
        return KvDialogAction.actionHighest(
          label: 'Action',
          onPressed: () {},
        );
      case KvDialogActionType.confirmationDefault:
        return KvDialogAction.confirmationDefault(
          labelPositive: 'Primary',
          onPositivePressed: () {},
          labelNegative: 'Secondary',
          onNegativePressed: () {},
        );
      case KvDialogActionType.confirmationHighest:
        return KvDialogAction.confirmationHighest(
          label: 'Action',
          onPressed: () {},
        );
    }
  }
}
