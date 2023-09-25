import 'dart:convert';

SignModel signModelFromJson(String str) => SignModel.fromJson(json.decode(str));

String signModelToJson(SignModel data) => json.encode(data.toJson());

class SignModel {
  final String username;
  final String email;
  final String password;

  SignModel({
    required this.username,
    required this.email,
    required this.password,
  });

  factory SignModel.fromJson(Map<String, dynamic> json) => SignModel(
        username: json["username"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
      };
}
