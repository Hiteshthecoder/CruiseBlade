import 'package:cruise_blade/WIDGETS/BigTextWidget.dart';
import 'package:cruise_blade/WIDGETS/SignInPageTextFields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.squarespace-cdn.com/content/v1/5fe4caeadae61a2f19719512/1609948707671-Y2R9FNDIOWSIST76ADQ7/7.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: MediaQuery.of(context).orientation == Orientation.portrait
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05)
                : EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08,
                  ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                BigTextWidget(
                  fontSize: 27,
                  text: "Sign In",
                  color: Colors.white,
                  textOverflow: TextOverflow.visible,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SignInPageTextFields(
                  emailHintTextFontSize: 19,
                  passwordHintTextFontSize: 19,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        HexColor("#E04041"),
                        HexColor("#6043B1"),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: BigTextWidget(
                    fontSize: 22,
                    text: "Sign In",
                    color: Colors.white,
                    textOverflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
