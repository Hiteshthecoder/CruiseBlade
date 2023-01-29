import 'package:cruise_blade/SCREENS/LandingPage.dart';
import 'package:cruise_blade/SCREENS/LoginScreen.dart';
import 'package:cruise_blade/SCREENS/SignUpScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currIndex = 0;
  final List<Widget> pages = const [
    LandingPage(),
    LoginScreen(),
    SignUpScreen(),
    LoginScreen(),
    SignUpScreen(),
  ];
  void pageChanger(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: currIndex,
        height: 50,
        onTap: (value) {
          pageChanger(value);
        },
        color: Colors.deepPurple.shade400,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.red,
        items: const [
          Icon(
            FontAwesomeIcons.house,
            color: Colors.white,
          ),
          Icon(
            Icons.category_rounded,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.deezer,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
          )
        ],
      ),
      body: pages[currIndex],
    );
  }
}
