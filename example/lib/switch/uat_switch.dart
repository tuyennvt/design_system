import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

class UatSwitch extends StatefulWidget {
  const UatSwitch({super.key, required this.title});

  final String title;

  @override
  State<UatSwitch> createState() => UatSwitchState();
}

class UatSwitchState extends State<UatSwitch> {
  bool enabled = true;
  bool value = false;

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
              KvSwitch(
                value: value,
                onChanged: (bool value) {
                  setState(() {
                    this.value = value;
                  });
                },
                enabled: enabled,
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
