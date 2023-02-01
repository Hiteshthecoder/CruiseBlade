import 'package:cruise_blade/WIDGETS/INDIVIDUAL_MOVIE_PAGE/IndividualMoviePage.dart';
import 'package:flutter/material.dart';

class NowPlayingMovies extends StatefulWidget {
  NowPlayingMovies({
    super.key,
    required this.movieImage,
  });
  String movieImage;

  @override
  State<NowPlayingMovies> createState() => _NowPlayingMoviesState();
}

class _NowPlayingMoviesState extends State<NowPlayingMovies> {
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
          image: DecorationImage(
            image: NetworkImage(
              widget.movieImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
