import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

class UatRadio extends StatefulWidget {
  const UatRadio({super.key, required this.title});

  final String title;

  @override
  State<UatRadio> createState() => UatRadioState();
}

class UatRadioState extends State<UatRadio> {
  bool enabled = true;
  int groupValue = 0;

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
              KvRadio<int>(
                value: 0,
                groupValue: groupValue,
                onChanged: (int value) {
                  setState(() {
                    groupValue = value;
                  });
                },
                enabled: enabled,
                content: 'Radio content 0',
              ),
              const SizedBox(height: 24),
              KvRadio<int>(
                value: 1,
                groupValue: groupValue,
                onChanged: (int value) {
                  setState(() {
                    groupValue = value;
                  });
                },
                enabled: enabled,
                content: 'Radio content 1',
              ),
              const SizedBox(height: 24),
              KvRadio<int>(
                value: 2,
                groupValue: groupValue,
                onChanged: (int value) {
                  setState(() {
                    groupValue = value;
                  });
                },
                enabled: enabled,
                content: 'Radio content 2',
              ),
              const SizedBox(height: 44),
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
