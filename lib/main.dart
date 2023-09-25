import 'package:chat_app/constants/app_contants.dart';
import 'package:chat_app/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Color(kLight.value),
                iconTheme: IconThemeData(color: Color(kDark.value)),
                primarySwatch: Colors.red),
            home: const SignUpPage());
      },
    );
  }
}
