import 'dart:convert';

class UserModel {
  final String email;
  final String registerType;
  final String imgAvatar;

  UserModel(
    this.email,
    this.registerType,
    this.imgAvatar,
  );

  UserModel.empty()
      : email = '',
        registerType = '',
        imgAvatar = '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'registerType': registerType,
      'imgAvatar': imgAvatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['email'] as String,
      map['registerType'] as String,
      map['imgAvatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
