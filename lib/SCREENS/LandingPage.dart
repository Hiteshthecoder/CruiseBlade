import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/WIDGETS/BigTextWidget.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/MOVIES_CATEGORIES/Movies_Category_Widget.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/NOW_PLAYING/NowPlayingMoviesWidget.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/PREMIERE_CATEGORIES/Premiere_Movies_Widget.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/TOP_PORTION/TopPotion.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/UPCOMING_MOVIES_SECTION/UpComingMoviesWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String userName = "";
  Future getUserData() async {
    DocumentSnapshot userData = await FirebaseFirestore.instance
        .collection("Users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    setState(() {
      userName = (userData.data() as Map<String, dynamic>)['userName'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.deepPurple,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.transparent,
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
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: HexColor("#192841"),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue.withOpacity(0.2),
              Colors.deepPurple.shade200,
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              const TopPortion(),
              Padding(
                padding: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                    ? EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                      )
                    : EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.04,
                      ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTextWidget(
                      fontSize: 20,
                      text: "Categories",
                      color: Colors.white,
                      textOverflow: TextOverflow.visible,
                      fontWeight: FontWeight.w600,
                    ),
                    const MoviesCategoryWidget(),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                          )
                        : EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                          ),
                    child: BigTextWidget(
                      fontSize: 22,
                      text: "Premiere",
                      color: Colors.white,
                      textOverflow: TextOverflow.visible,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const PremiereMoviesWidget(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            left: MediaQuery.of(context).size.width * 0.03,
                            bottom: MediaQuery.of(context).size.height * 0.01,
                          )
                        : EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.03,
                            left: MediaQuery.of(context).size.width * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                    child: BigTextWidget(
                      fontSize: 22,
                      text: "Now Playing",
                      color: Colors.white,
                      textOverflow: TextOverflow.visible,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const NowPlayingMoviesWidget(),
                ],
              ),
              const UpComingMoviesWidget()
            ],
          ),
        ),
      ),
    );
  }
}
