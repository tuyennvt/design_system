// import 'package:flutter/material.dart';
//
// import '../../../kv_design_system.dart';
// import '../../../utils.dart';
// import '../../input/base/kv_input_helper_text.dart';
// import '../../input/base/kv_input_state.dart';
// import 'kv_select_box_decorator.dart';
//
// const Duration _animationDuration = Duration(milliseconds: 167);
//
// class KvSelectBox extends FormField<String> {
//   KvSelectBox({
//     super.key,
//     String? initialValue,
//     FocusNode? focusNode,
//     required KvSelectBoxDecoration decoration,
//     bool readOnly = false,
//     required Future<String?> Function() onSelected,
//     super.onSaved,
//     super.validator,
//     bool enabled = true,
//     AutovalidateMode autoValidateMode = AutovalidateMode.disabled,
//   }) : super(
//           initialValue: initialValue,
//           enabled: enabled,
//           autovalidateMode: autoValidateMode,
//           builder: (FormFieldState<String> field) {
//             return _SelectBox(
//               focusNode: focusNode,
//               initialValue: initialValue,
//               decoration: decoration.copyWith(errorText: field.errorText),
//               onSelected: onSelected,
//               enabled: enabled,
//               readOnly: readOnly,
//               onChanged: (value) {
//                 field.didChange(value);
//               },
//             );
//           },
//         );
// }
//
// class _SelectBox extends StatefulWidget {
//   const _SelectBox({
//     this.focusNode,
//     this.initialValue,
//     required this.decoration,
//     required this.onSelected,
//     required this.enabled,
//     required this.readOnly,
//     this.onChanged,
//   });
//
//   final FocusNode? focusNode;
//   final String? initialValue;
//   final KvSelectBoxDecoration decoration;
//   final Future<String?> Function() onSelected;
//   final bool enabled;
//   final bool readOnly;
//   final ValueChanged<String>? onChanged;
//
//   @override
//   State<_SelectBox> createState() => _SelectBoxState();
// }
//
// class _SelectBoxState extends State<_SelectBox> {
//   late FocusNode _focusNode;
//   KvInputState _state = KvInputState.idle;
//   bool _focused = false;
//   String _value = '';
//
//   @override
//   void initState() {
//     _focusNode = widget.focusNode ?? FocusNode();
//     _listenFocus();
//     _value = widget.initialValue ?? '';
//     super.initState();
//   }
//
//   @override
//   void didUpdateWidget(covariant _SelectBox oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _handleState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final decorator = KvSelectBoxDecorator(
//       enabled: widget.enabled,
//       readOnly: widget.readOnly,
//       inputState: _state,
//       decoration: widget.decoration,
//     );
//     return Focus(
//       focusNode: _focusNode,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () async {
//               if (widget.readOnly || !widget.enabled) {
//                 return;
//               }
//               _focusNode.requestFocus();
//               String value = await widget.onSelected.call() ?? '';
//               setState(() => _value = value);
//               widget.onChanged?.call(_value);
//             },
//             child: Container(
//               padding: decorator.padding,
//               decoration: BoxDecoration(
//                 color: decorator.backgroundColor,
//                 border: decorator.border,
//                 borderRadius: decorator.borderRadius,
//               ),
//               height: KvDesignSystem().sizeSize56,
//               child: Row(
//                 children: [
//                   decorator.prefix,
//                   Flexible(
//                     child: _SelectBoxChild(
//                       inputState: _state,
//                       value: _value,
//                       decorator: decorator,
//                     ),
//                   ),
//                   decorator.suffix,
//                 ],
//               ),
//             ),
//           ),
//           KvInputHelperText(
//             helperText: widget.decoration.helperText,
//             errorText: widget.decoration.errorText,
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _listenFocus() {
//     _focusNode.addListener(() {
//       _focused = _focusNode.hasFocus;
//       _handleState();
//       setState(() {});
//     });
//   }
//
//   void _handleState() {
//     if (widget.decoration.errorText != null && _focused) {
//       _changeInputState(KvInputState.focusedError);
//     } else if (_focused) {
//       _changeInputState(KvInputState.focused);
//     } else if (widget.decoration.errorText != null) {
//       _changeInputState(KvInputState.error);
//     } else {
//       _changeInputState(KvInputState.idle);
//     }
//   }
//
//   void _changeInputState(KvInputState value) {
//     if (value == _state) {
//       return;
//     }
//     _state = value;
//   }
// }
//
// class _SelectBoxChild extends StatelessWidget {
//   const _SelectBoxChild({
//     required this.inputState,
//     required this.value,
//     required this.decorator,
//   });
//
//   final KvInputState inputState;
//   final String value;
//   final KvSelectBoxDecorator decorator;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: KvDesignSystem().sizeSize40,
//       child: Stack(
//         children: [
//           AnimatedAlign(
//             alignment: alignment,
//             duration: _animationDuration,
//             child: AnimatedDefaultTextStyle(
//               style: textStyle,
//               duration: _animationDuration,
//               child: decorator.label,
//             ),
//           ),
//           if (inputState == KvInputState.focused ||
//               inputState == KvInputState.focusedError ||
//               value.isNotNullOrEmpty) ...{
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: SizedBox(
//                 height: KvDesignSystem().sizeSize20,
//                 child: Text(
//                   value,
//                   style: decorator.valueStyle,
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),
//               ),
//             ),
//           },
//         ],
//       ),
//     );
//   }
//
//   Alignment get alignment {
//     if (inputState == KvInputState.focused ||
//         inputState == KvInputState.focusedError ||
//         value.isNotNullOrEmpty) {
//       return Alignment.topLeft;
//     }
//     return Alignment.centerLeft;
//   }
//
//   TextStyle get textStyle {
//     if (inputState == KvInputState.focused ||
//         inputState == KvInputState.focusedError ||
//         value.isNotNullOrEmpty) {
//       return decorator.floatingLabelStyle;
//     }
//     return decorator.labelStyle;
//   }
// }
