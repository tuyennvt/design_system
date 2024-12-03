import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

class UatToast extends StatefulWidget {
  const UatToast({super.key, required this.title});

  final String title;

  @override
  State<UatToast> createState() => UatToastState();
}

class UatToastState extends State<UatToast> {
  bool showDesc = true;
  bool showPrefixIcon = true;
  String title = 'System message';
  String description =
      'System message after an action, then will close after 5 seconds';

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
              KvCommonButton(
                onPressed: () {
                  KvToast.success(
                    context,
                    title: title,
                    description: showDesc ? description : null,
                    showPrefixIcon: showPrefixIcon,
                  ).show();
                },
                label: 'Toast success',
              ),
              const SizedBox(height: 16),
              KvCommonButton(
                onPressed: () {
                  KvToast.danger(
                    context,
                    title: title,
                    description: showDesc ? description : null,
                    showPrefixIcon: showPrefixIcon,
                  ).show();
                },
                label: 'Toast danger',
              ),
              const SizedBox(height: 16),
              KvCommonButton(
                onPressed: () {
                  KvToast.warning(
                    context,
                    title: title,
                    description: showDesc ? description : null,
                    showPrefixIcon: showPrefixIcon,
                  ).show();
                },
                label: 'Toast warning',
              ),
              const SizedBox(height: 16),
              KvCommonButton(
                onPressed: () {
                  KvToast.system(
                    context,
                    title: title,
                    description: showDesc ? description : null,
                    showPrefixIcon: showPrefixIcon,
                  ).show();
                },
                label: 'Toast system',
              ),
              const SizedBox(height: 16),
              KvCommonButton(
                onPressed: () {
                  KvToast.information(
                    context,
                    title: title,
                    description: showDesc ? description : null,
                    showPrefixIcon: showPrefixIcon,
                  ).show();
                },
                label: 'Toast information',
              ),
              const SizedBox(height: 16),
              KvCheckbox(
                value: showDesc,
                content: 'Show description',
                onChanged: (value) {
                  setState(() => showDesc = value);
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
            ],
          ),
        ),
      ),
    );
  }
}
