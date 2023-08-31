// import 'dart:ui' as dart_ui;

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:provider_app/src/constant/color_constants.dart';

// class TextFieldComponent extends StatefulWidget {
//   final Function()? onTap;
//   final String? title;
//   final bool isMandatory;
//   final TextEditingController textEditingController;
//   final String hintText;
//   final bool hideAsterisk;
//   final bool? hidePassword;
//   final Widget? suffixIcon;
//   final Color fieldColor;
//   final Color? fieldBorderColor;

//   final bool disableField;
//   final String? Function(String?)? validator;
//   final int? maxLength;
//   final int maxLines;
//   final int minLines;
//   final bool? enabled;
//   final Function(String _)? onChanged;
//   final Function(String _)? onFieldSubmitted;
//   final TextInputType? keyboardType;
//   final TextInputAction? textInputAction;
//   final String? trailingImage;
//   final Function()? onTrailingPressed;
//   final FocusNode? focusNode;
//   final bool capitalizeText;
//   final Widget? prefixWidget;
//   final dart_ui.TextDirection? textDirection;
//   final bool? changeDirection;
//   final bool formatterFlag;
//   final double? borderRadious;
//   final bool? isFilledColor;

//   final TextStyle? overrideHintStyle;
//   final TextStyle? overrideTitleStyle;

//   const TextFieldComponent(
//     this.textEditingController, {
//     Key? key,
//     this.onTap,
//     this.title,
//     this.isMandatory = false,
//     this.hintText = '',
//     this.hideAsterisk = false,
//     this.hidePassword,
//     this.suffixIcon,
//     this.fieldColor = ColorConstants.lightGrey,
//     this.disableField = false,
//     this.validator,
//     this.formatterFlag = false,
//     this.maxLength,
//     this.maxLines = 1,
//     this.minLines = 1,
//     this.enabled,
//     this.onChanged(String _)?,
//     this.onFieldSubmitted(String _)?,
//     this.keyboardType = TextInputType.name,
//     this.textInputAction = TextInputAction.next,
//     this.trailingImage,
//     this.onTrailingPressed,
//     this.focusNode,
//     this.capitalizeText = false,
//     this.prefixWidget,
//     this.changeDirection = false,
//     this.textDirection,
//     this.fieldBorderColor,
//     this.borderRadious,
//     this.isFilledColor = false,
//     this.overrideHintStyle,
//     this.overrideTitleStyle,
//   }) : super(key: key);

//   @override
//   State<TextFieldComponent> createState() => _TextFieldComponentState();
// }

// class _TextFieldComponentState extends State<TextFieldComponent> {
//   bool? hidePassword;

//   @override
//   void initState() {
//     hidePassword = widget.hidePassword;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (widget.title != null)
//           Padding(
//             padding: const EdgeInsets.only(bottom: 6),
//             child: Row(
//               children: [
//                 // TextComponent(
//                 //   widget.title!,
//                 //   style: widget.overrideTitleStyle ??
//                 //       FontStylesConstants.subtitleOneUrdu(
//                 //           fontWeight: FontWeight.w600,
//                 //           color: Color(0xff535151)),
//                 // ),
//                 // TextComponent(
//                 //   widget.isMandatory ? '*' : '',
//                 //   // style: FontStylesConstants.subtitleOneUrdu(
//                 //   //     fontWeight: FontWeight.w700,
//                 //   //     color: const Color(0xff535151)),
//                 // ),
//               ],
//             ),
//           ),
//         TextFormField(
//           textDirection: widget.textDirection,
//           onTap: widget.onTap,
//           textInputAction: widget.textInputAction,
//           key: widget.key,
//           controller: widget.textEditingController,
//           obscureText: hidePassword ?? false,
//           validator: widget.validator,
//           maxLength: widget.maxLength,
//           minLines: widget.minLines,
//           maxLines: widget.maxLines,
//           enabled: widget.enabled,
//           keyboardType: widget.keyboardType,
//           focusNode: widget.focusNode,
//           onFieldSubmitted: widget.onFieldSubmitted,
//           onChanged: (_) =>
//               widget.onChanged == null ? () {} : widget.onChanged!(_),
//           style: TextStyle(
//             color: widget.disableField
//                 ? ColorConstants.disableDark
//                 : ColorConstants.black,
//           ),
//           inputFormatters: widget.formatterFlag
//               ? [
//                   FilteringTextInputFormatter.allow(
//                       RegExp("[a-zA-Z0-9\s!@#%^&*(),.?“:{}|<> ]"))
//                 ]
//               : !widget.capitalizeText
//                   ? widget.keyboardType == TextInputType.name
//                       ? [
//                           FilteringTextInputFormatter.allow(
//                               RegExp("[0-9a-zA-Z ]")),
//                         ]
//                       : []
//                   : [
//                       _UpperCaseTextFormatter(),
//                     ],
//           decoration: InputDecoration(
//             counterText: '',
//             filled: widget.isFilledColor,
//             fillColor: widget.fieldColor,
//             enabled: !widget.disableField,
//             hintText: _showHintText(
//               text: widget.hintText,
//               showAsterisk: widget.isMandatory,
//             ),
//             labelStyle: const TextStyle(color: ColorConstants.grey),
//             // hintStyle:
//             //     widget.overrideHintStyle ?? FontStylesConstants.faizLahori14(),
//             border: _outLineBorder(),
//             errorBorder: _outLineBorder(),
//             enabledBorder: _outLineBorder(),
//             focusedBorder: _outLineBorder(),
//             disabledBorder: _outLineBorder(),
//             errorMaxLines: 2,
//             prefixIcon: widget.prefixWidget != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(left: 15),
//                     child: SizedBox(
//                       width: 50,
//                       child: widget.prefixWidget,
//                     ),
//                   )
//                 : null,
//             prefixIconConstraints: _boxConstraints(),
//             suffixIconConstraints: _boxConstraints(),
//             contentPadding: const EdgeInsets.fromLTRB(16, 21, 16, 16),
//             suffixIcon: widget.trailingImage != null
//                 ? GestureDetector(
//                     onTap: widget.onTrailingPressed ?? () {},
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 15),
//                       child: SvgPicture.asset(
//                         widget.trailingImage!,
//                         color: ColorConstants.niceBlue,
//                       ),
//                     ),
//                   )
//                 : hidePassword != null
//                     ? GestureDetector(
//                         child: _iconWidget(),
//                         onTap: () {
//                           setState(() => hidePassword = !hidePassword!);
//                         },
//                       )
//                     : widget.suffixIcon,
//           ),
//         ),
//       ],
//     );
//   }

//   OutlineInputBorder _outLineBorder() => OutlineInputBorder(
//         borderRadius: BorderRadius.circular(widget.borderRadious ?? 12),
//         borderSide: BorderSide(
//           color: widget.fieldBorderColor ?? widget.fieldColor,
//         ),
//       );

//   String _showHintText({
//     required String text,
//     required bool showAsterisk,
//   }) {
//     if (text != '') {
//       return text;
//     } else {
//       return text;
//     }
//   }

//   BoxConstraints _boxConstraints() => const BoxConstraints();

//   Widget _iconWidget() => Padding(
//         padding: const EdgeInsets.only(right: 16),
//         child: Icon(
//           hidePassword! ? Icons.visibility_off : Icons.visibility,
//           color: widget.fieldColor,
//         ),
//       );
// }

// class _UpperCaseTextFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     return TextEditingValue(
//       text: newValue.text.toUpperCase(),
//       selection: newValue.selection,
//     );
//   }
// }
