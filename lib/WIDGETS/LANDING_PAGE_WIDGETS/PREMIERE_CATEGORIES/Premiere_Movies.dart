import 'package:flutter/material.dart';

class PremiereMovies extends StatefulWidget {
  PremiereMovies({
    super.key,
    required this.movieImage,
  });
  String movieImage;

  @override
  State<PremiereMovies> createState() => _PremiereMoviesState();
}

class _PremiereMoviesState extends State<PremiereMovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
            )
          : EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01,
            ),
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width * 0.46
          : MediaQuery.of(context).size.width * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(
            widget.movieImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
