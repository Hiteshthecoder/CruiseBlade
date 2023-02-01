import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/FEATURES/API_SERVICES/Api_Services.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/PREMIERE_CATEGORIES/Premiere_Movies.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class PremiereMoviesWidget extends StatefulWidget {
  const PremiereMoviesWidget({super.key});

  @override
  State<PremiereMoviesWidget> createState() => _PremiereMoviesWidgetState();
}

class _PremiereMoviesWidgetState extends State<PremiereMoviesWidget> {
  @override
  void initState() {
    super.initState();
    fetchPremiereMovies();
    fetchMovieData();
  }

  List premiereMoviesList = [];
  List newPremiereMOviesByApi = [];
  var page;
  Future<void> fetchPremiereMovies() async {
    DocumentSnapshot premiereMovies = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection('movieDetails')
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();
    setState(() {
      premiereMoviesList =
          (premiereMovies.data() as Map<String, dynamic>)['UniversalMovieData']
              ['NowPlayingMoviesData'];
    });
  }

  fetchMovieData() async {
    final tmdb = TMDB(ApiKeys(
      '93a4af9f7f9e5328eb86e1327c9bf663',
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5M2E0YWY5ZjdmOWU1MzI4ZWI4NmUxMzI3YzliZjY2MyIsInN1YiI6IjYzZDg3Y2VhM2RjMzEzMDBhZjIyZDZiMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.DmtHzoUKgbVPl6AaP7l_2UVFMDuKUfB6oetze3BEWVs',
    ));
    final tmdbWithLogs = TMDB(
      ApiKeys('93a4af9f7f9e5328eb86e1327c9bf663',
          'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5M2E0YWY5ZjdmOWU1MzI4ZWI4NmUxMzI3YzliZjY2MyIsInN1YiI6IjYzZDg3Y2VhM2RjMzEzMDBhZjIyZDZiMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.DmtHzoUKgbVPl6AaP7l_2UVFMDuKUfB6oetze3BEWVs'),
      logConfig: const ConfigLogger.showAll(),
    );

    final tmdbWithCustomLogs = TMDB(
      ApiKeys('93a4af9f7f9e5328eb86e1327c9bf663',
          'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5M2E0YWY5ZjdmOWU1MzI4ZWI4NmUxMzI3YzliZjY2MyIsInN1YiI6IjYzZDg3Y2VhM2RjMzEzMDBhZjIyZDZiMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.DmtHzoUKgbVPl6AaP7l_2UVFMDuKUfB6oetze3BEWVs'),
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map<dynamic, dynamic> trandingMovies =
        await tmdbWithCustomLogs.v3.trending.getTrending();
    setState(() {
      newPremiereMOviesByApi = trandingMovies['results'];
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
          ? MediaQuery.of(context).size.height * 0.32
          : MediaQuery.of(context).size.height * 0.52,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: premiereMoviesList.length,
        itemBuilder: (context, index) {
          return PremiereMovies(
            movieImage: premiereMoviesList[index]['MovieImage'],
          );
        },
      ),
    );
  }
}
