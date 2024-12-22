import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget(
      {super.key,
      required this.controller,
      this.hintText = '',
      this.isPassword = false,
      this.validator,
      this.hintTextDirection = TextDirection.ltr,
      this.hintStyle = const TextStyle(),
      //   required this.border,
      this.textDirection = TextDirection.ltr,
      this.prefixIcon,
      this.suffixIcon = const SizedBox(),
      this.textAlignVertical = TextAlignVertical.center,
      this.contentPadding,
      this.suffixIconConstraints = const BoxConstraints(),
      required this.color,
      required this.width,
      required this.height});
  final TextStyle hintStyle;
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextDirection hintTextDirection;
  // final InputBorder border;
  final TextDirection textDirection;
  final TextAlignVertical? textAlignVertical;
  final Widget? prefixIcon;
  final Widget suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final BoxConstraints suffixIconConstraints;
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none);
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        textDirection: textDirection,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlignVertical: textAlignVertical,
        validator: validator,
        controller: controller,
        obscureText: isPassword,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintTextDirection: hintTextDirection,
          hintStyle: hintStyle,
          hintText: hintText,
          filled: true,
          fillColor: color,
          border: border,
          focusedBorder: border,
          enabledBorder: border,
        ),
      ),
    );
  }
}
