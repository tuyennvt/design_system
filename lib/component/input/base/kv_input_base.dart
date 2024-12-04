import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../employee_flutter_design_system.dart';
import 'kv_clear_input_button.dart';
import 'kv_input_decorator.dart';
import 'kv_input_helper_text.dart';
import 'kv_input_state.dart';

enum KvInputSize {
  small(KvDesignSystem().dataInputInputSizeS),
  medium(KvDesignSystem().dataInputInputSizeM),
  large(KvDesignSystem().dataInputInputSizeL),
  extraLarge(KvDesignSystem().dataInputInputSizeXl);

  const KvInputSize(this.value);

  final double value;
}

class KvInputBase extends StatefulWidget {
  const KvInputBase({
    super.key,
    this.inputSize = KvInputSize.extraLarge,
    this.focusNode,
    this.controller,
    this.decoration = const KvInputDecoration(),
    this.enabled = true,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.autofocus = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.restorationId,
  });

  final KvInputSize inputSize;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final KvInputDecoration decoration;
  final bool enabled;
  final bool readOnly;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final String? restorationId;

  @override
  State<KvInputBase> createState() => _KvInputBaseState();
}

class _KvInputBaseState extends State<KvInputBase> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  KvInputState _state = KvInputState.idle;
  bool _focused = false;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller ?? TextEditingController();
    _listenFocus();
    _handleInputState();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant KvInputBase oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleInputState();
  }

  void _listenFocus() {
    _focusNode.addListener(() {
      _focused = _focusNode.hasFocus;
      _handleInputState();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final decorator = KvInputDecorator(
      controllerText: _controller.text,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      inputSize: widget.inputSize,
      inputState: _state,
      decoration: widget.decoration,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            if (widget.enabled || !widget.readOnly) {
              _focusNode.requestFocus();
            }
          },
          child: Container(
            padding: decorator.verticalPadding,
            decoration: BoxDecoration(
              color: decorator.backgroundColor,
              border: decorator.border,
              borderRadius: decorator.borderRadius,
            ),
            child: Row(
              children: [
                const SizedBox(width: KvDesignSystem().sizeSize16),
                decorator.prefix,
                Flexible(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focusNode,
                    decoration: decorator.materialInputDecoration,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    style: decorator.contentStyle,
                    readOnly: widget.readOnly,
                    autofocus: widget.autofocus,
                    maxLines: widget.maxLines,
                    minLines: widget.minLines,
                    maxLength: widget.maxLength,
                    onChanged: widget.onChanged,
                    onEditingComplete: widget.onEditingComplete,
                    onSubmitted: widget.onSubmitted,
                    inputFormatters: widget.inputFormatters,
                    enabled: widget.enabled,
                    cursorHeight: 20,
                    onTap: widget.onTap,
                    restorationId: widget.restorationId,
                  ),
                ),
                KvClearInputButton(
                  visible: _state == KvInputState.focused ||
                      _state == KvInputState.focusedError,
                  onPressed: () {
                    if (widget.readOnly || !widget.enabled) {
                      return;
                    }
                    _controller.clear();
                    widget.onChanged?.call('');
                  },
                ),
                if (widget.decoration.assetSuffixIcon.isNotNullOrEmpty) ...{
                  const SizedBox(width: KvDesignSystem().sizeSize16),
                },
                decorator.suffix,
                const SizedBox(width: KvDesignSystem().sizeSize16),
              ],
            ),
          ),
        ),
        KvInputHelperText(
          helperText: widget.decoration.helperText,
          errorText: widget.decoration.errorText,
        ),
      ],
    );
  }

  void _handleInputState() {
    if (widget.decoration.errorText != null && _focused) {
      _changeInputState(KvInputState.focusedError);
    } else if (_focused) {
      _changeInputState(KvInputState.focused);
    } else if (widget.decoration.errorText != null) {
      _changeInputState(KvInputState.error);
    } else {
      _changeInputState(KvInputState.idle);
    }
  }

  void _changeInputState(KvInputState value) {
    if (value == _state) {
      return;
    }
    _state = value;
  }
}
