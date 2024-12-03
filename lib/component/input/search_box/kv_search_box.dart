import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../style_dictionary/style_dictionary_size.dart';
import '../../../utils.dart';
import '../base/kv_clear_input_button.dart';
import '../kv_input.dart';
import 'kv_search_box_decorator.dart';

enum KvSearchBoxSize {
  small(DTokens.sizeSize32),
  medium(DTokens.sizeSize40);

  const KvSearchBoxSize(this.value);

  final double value;
}

enum KvSearchBoxState {
  idle,
  focused,
  filled,
}

class KvSearchBox extends StatefulWidget {
  const KvSearchBox({
    super.key,
    this.size = KvSearchBoxSize.medium,
    this.focusNode,
    this.controller,
    this.decoration = const KvSearchBoxDecoration(),
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.search,
    this.autofocus = false,
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
  });

  final KvSearchBoxSize size;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final KvSearchBoxDecoration decoration;
  final bool enabled;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool autofocus;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<KvSearchBox> createState() => _KvSearchBoxState();
}

class _KvSearchBoxState extends State<KvSearchBox> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  KvSearchBoxState _state = KvSearchBoxState.idle;
  bool _focused = false;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller ?? TextEditingController();
    _listenFocus();
    _handleState();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant KvSearchBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleState();
  }

  void _listenFocus() {
    _focusNode.addListener(() {
      _focused = _focusNode.hasFocus;
      _handleState();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final decorator = KvSearchBoxDecorator(
      valueOfController: _controller.text,
      enabled: widget.enabled,
      size: widget.size,
      state: _state,
      decoration: widget.decoration,
    );
    return GestureDetector(
      onTap: () {
        if (widget.enabled) {
          _focusNode.requestFocus();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: decorator.backgroundColor,
          border: decorator.border,
          borderRadius: decorator.borderRadius,
        ),
        height: widget.size.value,
        child: Row(
          children: [
            const SizedBox(
              width: DTokens.sizeSize16,
            ),
            decorator.prefix,
            Flexible(
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                decoration: decorator.materialInputDecoration,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                style: decorator.textStyle,
                autofocus: widget.autofocus,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingComplete,
                onSubmitted: widget.onSubmitted,
                inputFormatters: widget.inputFormatters,
                enabled: widget.enabled,
                onTap: widget.onTap,
              ),
            ),
            const SizedBox(
              width: DTokens.sizeSize12,
            ),
            KvClearInputButton(
              visible: _state == KvSearchBoxState.focused ||
                  _state == KvSearchBoxState.filled,
              onPressed: () {
                if (!widget.enabled) {
                  return;
                }
                _controller.clear();
                widget.onChanged?.call('');
              },
            ),
            const SizedBox(
              width: DTokens.sizeSize16,
            ),
          ],
        ),
      ),
    );
  }

  void _handleState() {
    if (_focused) {
      _changeInputState(KvSearchBoxState.focused);
    } else if (_controller.text.isNotNullOrEmpty) {
      _changeInputState(KvSearchBoxState.filled);
    } else {
      _changeInputState(KvSearchBoxState.idle);
    }
  }

  void _changeInputState(KvSearchBoxState value) {
    if (value == _state) {
      return;
    }
    _state = value;
  }
}
