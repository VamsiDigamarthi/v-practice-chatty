import 'package:chat_app/constants/app_contants.dart';
import 'package:chat_app/controller/signup_controller.dart';
import 'package:chat_app/model/request/auth/signup_model.dart';
import 'package:chat_app/views/common/app_bar.dart';
import 'package:chat_app/views/common/app_style.dart';
import 'package:chat_app/views/common/custome_btn.dart';
import 'package:chat_app/views/common/custome_text_field.dart';
import 'package:chat_app/views/common/reusable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignupNotifier>(builder: (context, signupNofitier, child) {
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomeAppBar(
                text: "SingUp",
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(CupertinoIcons.arrow_left),
                )),
          ),
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //       "https://venteskraft.net/wp-content/uploads/2022/02/liz-gross-signup.gif"),
                  //   radius: 30,
                  // ),
                  //
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.network(
                        "https://venteskraft.net/wp-content/uploads/2022/02/liz-gross-signup.gif",
                        fit: BoxFit.cover),
                  ),
                  Form(
                    // key: signupNotifier.signupFormKey,
                    child: ListView(children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: ResuableText(
                            text: "Welocom",
                            style: appstyle(
                                25, Color(kDark.value), FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      CustomTextField(
                        controller: username,
                        hintText: "Username",
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      CustomTextField(
                        controller: email,
                        hintText: "Email",
                        keyboardType: TextInputType.text,
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      CustomTextField(
                        controller: password,
                        hintText: "Password",
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      const SizedBox(height: 30.0),
                      CustomeBtn(
                        text: "Sign Up",
                        onTap: () {
                          SignModel model = SignModel(
                              username: username.text,
                              email: email.text,
                              password: password.text);
                          signupNofitier.upSignup(model);
                          print("signup click");
                        },
                      )
                    ]),
                  ),
                ],
              )));
    });
  }
}
