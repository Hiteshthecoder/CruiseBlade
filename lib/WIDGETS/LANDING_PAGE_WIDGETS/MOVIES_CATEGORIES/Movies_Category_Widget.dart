import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/MOVIES_CATEGORIES/Movies_Category.dart';
import 'package:flutter/material.dart';

class MoviesCategoryWidget extends StatelessWidget {
  const MoviesCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.015,
            )
          : EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.03,
            ),
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.04
          : MediaQuery.of(context).size.height * 0.10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MovieCategories.movieTypes().length,
        itemBuilder: (context, index) {
          return MovieCategories(
            movieType: MovieCategories.movieTypes()[index],
          );
        },
      ),
    );
  }
}
