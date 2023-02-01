import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String email;
  String passWord;
  String userName;
  User({
    required this.email,
    required this.passWord,
    this.userName = "User",
  });

  static userData(DocumentSnapshot snapshot) {
    Map<String, dynamic> userInfo = snapshot.data() as Map<String, dynamic>;
    return User(
      email: userInfo['email'],
      passWord: userInfo['password'],
      userName: userInfo['userName'],
    );
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': passWord,
        'userName': userName,
      };
}
