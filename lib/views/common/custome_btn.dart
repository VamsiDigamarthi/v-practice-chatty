import 'package:chat_app/constants/app_contants.dart';
import 'package:chat_app/views/common/app_style.dart';
import 'package:chat_app/views/common/reusable_text.dart';
import 'package:flutter/material.dart';

class CustomeBtn extends StatelessWidget {
  const CustomeBtn({Key? key, required this.text, this.color, this.onTap})
      : super(key: key);

  final String text;
  final Color? color;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hieght * 0.055,
        // color: Color(kOrange.value),
        child: Center(
          child: ResuableText(
              text: text,
              style:
                  appstyle(20, color ?? Color(kLight.value), FontWeight.w600)),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(kOrange.value)),
      ),
    );
  }
}
