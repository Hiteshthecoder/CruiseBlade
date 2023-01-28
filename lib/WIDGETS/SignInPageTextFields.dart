import 'package:flutter/material.dart';

class SignInPageTextFields extends StatefulWidget {
  SignInPageTextFields({
    super.key,
    required this.emailHintTextFontSize,
    required this.passwordHintTextFontSize,
    required this.emaileditingController,
    required this.passwordeditingController,
  });
  double emailHintTextFontSize;
  double passwordHintTextFontSize;
  TextEditingController emaileditingController;
  TextEditingController passwordeditingController;
  @override
  State<SignInPageTextFields> createState() => _SignInPageTextFieldsState();
}

class _SignInPageTextFieldsState extends State<SignInPageTextFields> {
  @override
  void initState() {
    super.initState();
    widget.emaileditingController.text = "";
    widget.passwordeditingController.text = "";
  }

  bool visible = false;
  void visiblityChanger() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.emaileditingController.dispose();
    widget.passwordeditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: widget.emaileditingController,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.email_rounded,
              color: Colors.white,
            ),
            hintText: "Enter Emai",
            hintStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: Colors.black.withOpacity(0.30),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        TextField(
          controller: widget.passwordeditingController,
          style: const TextStyle(
            color: Colors.white,
            letterSpacing: 3,
          ),
          obscureText: visible ? false : true,
          decoration: InputDecoration(
            hintText: "Enter Your Password",
            isDense: true,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            prefixIcon: const Icon(
              Icons.password_rounded,
              color: Colors.white,
            ),
            suffixIcon: visible
                ? IconButton(
                    onPressed: () {
                      visiblityChanger();
                    },
                    icon: const Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ))
                : IconButton(
                    onPressed: () {
                      visiblityChanger();
                    },
                    icon: const Icon(
                      Icons.visibility_off_rounded,
                      color: Colors.white,
                    ),
                  ),
            fillColor: Colors.black.withOpacity(
              0.30,
            ),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
