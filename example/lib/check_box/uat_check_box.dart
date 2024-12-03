import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

class UatCheckbox extends StatefulWidget {
  const UatCheckbox({super.key, required this.title});

  final String title;

  @override
  State<UatCheckbox> createState() => UatCheckboxState();
}

class UatCheckboxState extends State<UatCheckbox> {
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
              KvCheckbox(
                value: value,
                onChanged: (bool value) {
                  setState(() {
                    this.value = value;
                  });
                },
                enabled: enabled,
                content: 'Checkbox content',
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
