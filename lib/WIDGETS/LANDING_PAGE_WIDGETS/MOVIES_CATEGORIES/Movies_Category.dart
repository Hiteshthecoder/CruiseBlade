import 'package:cruise_blade/WIDGETS/UNIVERSAL_WIDGETS/BigTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MovieCategories extends StatelessWidget {
  MovieCategories({
    super.key,
    required this.movieType,
  });
  static List movieTypes() {
    List movieCategoies = [
      "Action",
      "Drama",
      "Horror",
      "Thriller",
      "Comedy",
      "Fantasy",
      "Anime",
      "Cartoon"
    ];
    return movieCategoies;
  }

  String movieType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01)
          : EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
            ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.deepPurple.shade400,
          ],
        ),
      ),
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width * 0.24
          : MediaQuery.of(context).size.width * 0.11,
      alignment: Alignment.center,
      child: BigTextWidget(
        fontSize: 19,
        text: movieType,
        color: Colors.white,
        textOverflow: TextOverflow.visible,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
