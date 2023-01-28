import 'package:cruise_blade/WIDGETS/INDIVIDUAL_MOVIE_PAGE/IndividualMoviePage.dart';
import 'package:flutter/material.dart';

class NowPlayingMovies extends StatelessWidget {
  const NowPlayingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const IndiVidualMoviePage();
            },
          ),
        );
      },
      child: Container(
        margin: MediaQuery.of(context).orientation == Orientation.portrait
            ? EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
              )
            : EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.01,
              ),
        width: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width * 0.32
            : MediaQuery.of(context).size.width * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: NetworkImage(
              "https://images.saymedia-content.com/.image/t_share/MTc0NDgzOTg0NTgxOTI4NTgy/aquaman-review-and-trailer-did-it-try-too-hard.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
