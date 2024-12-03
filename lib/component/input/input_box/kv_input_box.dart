import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../base/kv_input_base.dart';
import '../base/kv_input_decoration.dart';

class KvInputBox extends FormField<String> {
  KvInputBox({
    super.key,
    this.controller,
    String? initialValue,
    FocusNode? focusNode,
    KvInputDecoration decoration = const KvInputDecoration(),
    TextInputType keyboardType = TextInputType.text,
    TextInputAction? textInputAction,
    bool autofocus = false,
    bool readOnly = false,
    bool autocorrect = true,
    int maxLines = 1,
    int? minLines,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    super.onSaved,
    super.validator,
    List<TextInputFormatter>? inputFormatters,
    bool enabled = true,
    AutovalidateMode autoValidateMode = AutovalidateMode.disabled,
    super.restorationId,
  })  : assert(initialValue == null || controller == null),
        assert(minLines == null || minLines > 0),
        assert(
          (minLines == null) || (maxLines >= minLines),
          "minLines can't be greater than maxLines",
        ),
        assert(
          maxLength == null ||
              maxLength == TextField.noMaxLength ||
              maxLength > 0,
        ),
        super(
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          enabled: enabled,
          autovalidateMode: autoValidateMode,
          builder: (FormFieldState<String> field) {
            final _KvInputBoxState state = field as _KvInputBoxState;
            void onChangedHandler(String value) {
              field.didChange(value);
              if (onChanged != null) {
                onChanged(value);
              }
            }

            return UnmanagedRestorationScope(
              bucket: field.bucket,
              child: KvInputBase(
                focusNode: focusNode,
                controller: state._effectiveController,
                decoration: decoration.copyWith(errorText: field.errorText),
                enabled: enabled,
                readOnly: readOnly,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                autofocus: autofocus,
                maxLines: maxLines,
                minLines: minLines,
                maxLength: maxLength,
                onTap: onTap,
                onChanged: onChangedHandler,
                onEditingComplete: onEditingComplete,
                onSubmitted: onFieldSubmitted,
                inputFormatters: inputFormatters,
                restorationId: restorationId,
              ),
            );
          },
        );

  final TextEditingController? controller;

  @override
  FormFieldState<String> createState() => _KvInputBoxState();
}

class _KvInputBoxState extends FormFieldState<String> {
  RestorableTextEditingController? _controller;

  TextEditingController get _effectiveController =>
      _textFormField.controller ?? _controller!.value;

  KvInputBox get _textFormField => super.widget as KvInputBox;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    if (_controller != null) {
      _registerController();
    }
    setValue(_effectiveController.text);
  }

  void _registerController() {
    assert(_controller != null);
    registerForRestoration(_controller!, 'controller');
  }

  void _createLocalController([TextEditingValue? value]) {
    assert(_controller == null);
    _controller = value == null
        ? RestorableTextEditingController()
        : RestorableTextEditingController.fromValue(value);
    if (!restorePending) {
      _registerController();
    }
  }

  @override
  void initState() {
    super.initState();
    if (_textFormField.controller == null) {
      _createLocalController(
        widget.initialValue != null
            ? TextEditingValue(text: widget.initialValue!)
            : null,
      );
    } else {
      _textFormField.controller!.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(KvInputBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_textFormField.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      _textFormField.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && _textFormField.controller == null) {
        _createLocalController(oldWidget.controller!.value);
      }

      if (_textFormField.controller != null) {
        setValue(_textFormField.controller!.text);
        if (oldWidget.controller == null) {
          unregisterFromRestoration(_controller!);
          _controller!.dispose();
          _controller = null;
        }
      }
    }
  }

  @override
  void dispose() {
    _textFormField.controller?.removeListener(_handleControllerChanged);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChange(String? value) {
    super.didChange(value);

    if (_effectiveController.text != value) {
      _effectiveController.text = value ?? '';
    }
  }

  @override
  void reset() {
    _effectiveController.text = widget.initialValue ?? '';
    super.reset();
  }

  void _handleControllerChanged() {
    if (_effectiveController.text != value) {
      didChange(_effectiveController.text);
    }
  }
}
