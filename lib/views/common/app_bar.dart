import 'package:chat_app/constants/app_contants.dart';
import 'package:chat_app/views/common/app_style.dart';
import 'package:chat_app/views/common/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({Key? key, this.text, required this.child, this.actions})
      : super(key: key);

  final String? text;

  final Widget child;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(),
      backgroundColor: Color(kLight.value),
      elevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: child,
      actions: actions,
      centerTitle: true,
      title: ResuableText(
          text: text ?? "",
          style: appstyle(16, Color(kDark.value), FontWeight.w600)),
    );
  }
}
