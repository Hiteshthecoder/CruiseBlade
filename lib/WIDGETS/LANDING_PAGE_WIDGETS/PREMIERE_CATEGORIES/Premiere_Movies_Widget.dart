import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/PREMIERE_CATEGORIES/Premiere_Movies.dart';
import 'package:flutter/material.dart';

class PremiereMoviesWidget extends StatelessWidget {
  const PremiereMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01,
            )
          : EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0,
            ),
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.32
          : MediaQuery.of(context).size.height * 0.52,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (context, index) {
          return const PremiereMovies();
        },
      ),
    );
  }
}
