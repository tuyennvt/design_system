import 'package:employee_flutter_design_system/employee_flutter_design_system.dart';
import 'package:flutter/material.dart';

class RadioGroup<T> extends StatefulWidget {
  const RadioGroup({
    super.key,
    required this.title,
    required this.initialValue,
    required this.items,
    required this.onChanged,
  });

  final String title;

  final T initialValue;

  final List<T> items;

  final ValueChanged<T> onChanged;

  @override
  State<RadioGroup<T>> createState() => _RadioGroupState<T>();
}

class _RadioGroupState<T> extends State<RadioGroup<T>> {
  late T _groupValue;

  @override
  void initState() {
    _groupValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: KvTextStyles.labelL(),
        ),
        Wrap(
          spacing: 16,
          children: widget.items
              .map((e) => KvRadio<T>(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    value: e,
                    groupValue: _groupValue,
                    content: e.toString().split('.').last,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _groupValue = value;
                        });
                        widget.onChanged(value);
                      }
                    },
                  ))
              .toList(),
        ),
      ],
    );
  }
}
