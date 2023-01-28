import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/FEATURES/MODEL/UserModel.dart' as UserModel;
import 'package:cruise_blade/SCREENS/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailAndPasswordAuth {
  Future EmailAndPasswordAuthMethod(
    BuildContext context, {
    required String email,
    required String password,
    String userName = "user",
  }) async {
    String result = "Sign In Failed";
    try {
      if (email.isNotEmpty && password.isNotEmpty && userName.isNotEmpty) {
        UserCredential Credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        UserModel.User user = UserModel.User(
          email: email,
          passWord: password,
          userName: userName,
        );
        await FirebaseFirestore.instance
            .collection('Users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set(
              user.toJson(),
            );
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.black.withOpacity(0.3),
            content: Text(
              "Email Or Password Or UserName is Empty",
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black.withOpacity(0.3),
          content: Text(
            e.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }
  }
}
