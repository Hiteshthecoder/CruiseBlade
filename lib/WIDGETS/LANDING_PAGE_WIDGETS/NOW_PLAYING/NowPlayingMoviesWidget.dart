import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/NOW_PLAYING/NowPlayingMovies.dart';
import 'package:flutter/material.dart';

class NowPlayingMoviesWidget extends StatefulWidget {
  const NowPlayingMoviesWidget({super.key});

  @override
  State<NowPlayingMoviesWidget> createState() => _NowPlayingMoviesWidgetState();
}

class _NowPlayingMoviesWidgetState extends State<NowPlayingMoviesWidget> {
  @override
  void initState() {
    super.initState();
    getMovieIMage();
  }

  var moviesMataData = [];
  Future<void> getMovieIMage() async {
    DocumentSnapshot moviesData = await FirebaseFirestore.instance
        .collection("Users")
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection("movieDetails")
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();
    setState(() {
      moviesMataData =
          (moviesData.data() as Map<String, dynamic>)['UniversalMovieData']
              ['NowPlayingMoviesData'];
    });
  }

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
          ? MediaQuery.of(context).size.height * 0.18
          : MediaQuery.of(context).size.height * 0.32,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: moviesMataData.length,
        itemBuilder: (context, index) {
          return NowPlayingMovies(
            movieImage: moviesMataData[index]['MovieImage'],
          );
        },
      ),
    );
    ;
  }
}
