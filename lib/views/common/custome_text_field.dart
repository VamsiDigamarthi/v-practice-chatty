import 'package:chat_app/constants/app_contants.dart';
import 'package:chat_app/views/common/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.keyboardType,
      this.suffixIcon,
      this.obscureText})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;

  final TextInputType keyboardType;
  final Widget? suffixIcon;

  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(kLightGrey.value),
      child: TextField(
          cursorHeight: 22,
          cursorColor: Colors.grey,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          style: appstyle(14, Color(kDark.value), FontWeight.w500),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: appstyle(14, Color(kDarkGrey.value), FontWeight.w500),
              suffixIcon: suffixIcon,
              errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.red, width: 0.5)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.transparent, width: 0)),
              focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide:
                      BorderSide(color: Colors.transparent, width: 0.5)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide:
                      BorderSide(color: Color(kDarkGrey.value), width: 0.5)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide:
                      BorderSide(color: Colors.transparent, width: 0.5)),
              border: InputBorder.none)),
    );
  }
}
