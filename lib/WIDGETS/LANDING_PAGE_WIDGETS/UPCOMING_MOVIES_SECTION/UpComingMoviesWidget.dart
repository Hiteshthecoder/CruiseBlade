import 'package:cruise_blade/WIDGETS/UNIVERSAL_WIDGETS/BigTextWidget.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/UPCOMING_MOVIES_SECTION/UpcomingMovies.dart';
import 'package:flutter/material.dart';

class UpComingMoviesWidget extends StatelessWidget {
  const UpComingMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
            )
          : EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: MediaQuery.of(context).orientation == Orientation.portrait
                ? EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.015,
                  )
                : EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03,
                  ),
            child: BigTextWidget(
              fontSize: 22,
              text: "UpComing Movies",
              color: Colors.white,
              textOverflow: TextOverflow.visible,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.16
                : MediaQuery.of(context).size.height * 0.30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const UpComingMovies();
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.01
                : MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.16
                : MediaQuery.of(context).size.height * 0.30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const UpComingMovies();
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.02
                : MediaQuery.of(context).size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
