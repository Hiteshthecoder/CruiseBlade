import 'package:flutter/material.dart';

class SignUpPageTextFields extends StatefulWidget {
  SignUpPageTextFields({
    super.key,
    required this.emailHintTextFontSize,
    required this.passwordeditingController,
    required this.userNameController,
    required this.emailController,
  });
  double emailHintTextFontSize;
  TextEditingController passwordeditingController;
  TextEditingController userNameController;
  TextEditingController emailController;
  @override
  State<SignUpPageTextFields> createState() => _SignUpPageTextFieldsState();
}

class _SignUpPageTextFieldsState extends State<SignUpPageTextFields> {
  bool visible = false;
  void visiblityChanger() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: widget.emailController,
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
          controller: widget.userNameController,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.email_rounded,
              color: Colors.white,
            ),
            hintText: "Enter UserName",
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
