import 'package:cruise_blade/WIDGETS/SignUpPageTextFields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../WIDGETS/BigTextWidget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = "";
    passwordController.text = "";
    userNameController.text = "";
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
  }

  bool checked = false;
  void checkChanger() {
    setState(() {
      checked = !checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
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
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: MediaQuery.of(context).orientation ==
                        Orientation.portrait
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
                      text: "Sign Up",
                      color: Colors.white,
                      textOverflow: TextOverflow.visible,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.02
                          : MediaQuery.of(context).size.height * 0.06,
                    ),
                    SignUpPageTextFields(
                        emailHintTextFontSize: 19,
                        passwordeditingController: passwordController,
                        userNameController: userNameController,
                        emailController: emailController),
                    SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.02
                          : MediaQuery.of(context).size.height * 0.06,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: Colors.blue,
                          fillColor:
                              const MaterialStatePropertyAll(Colors.blue),
                          shape: const OvalBorder(side: BorderSide.none),
                          value: checked,
                          onChanged: (value) {
                            checkChanger();
                          },
                        ),
                        BigTextWidget(
                          fontSize: 15,
                          text: "Accept The Terms And Services",
                          color: Colors.black,
                          textOverflow: TextOverflow.visible,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.06
                          : MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.deepPurple,
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: BigTextWidget(
                        fontSize: 22,
                        text: "Sign Up",
                        color: Colors.white,
                        textOverflow: TextOverflow.visible,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Or Sign Up With",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.apple,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.07,
              ),
              SizedBox(
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 0
                        : MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
