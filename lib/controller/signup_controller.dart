import 'package:chat_app/model/request/auth/signup_model.dart';
import 'package:chat_app/services/helpers/auth_helper.dart';
import 'package:flutter/material.dart';

class SignupNotifier extends ChangeNotifier {
  bool _obscureText = true;

  bool get isObscureText => _obscureText;

  set isObscureText(bool newValue) {
    _obscureText = newValue;
  }

  upSignup(SignModel model) {
    AuthHelper.signup(model).then((response) {
      if (response) {
        print(response);
      } else {
        print("not sigup");
      }
    });
  }
}
