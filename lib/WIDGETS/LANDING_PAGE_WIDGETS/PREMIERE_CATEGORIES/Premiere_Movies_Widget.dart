import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/PREMIERE_CATEGORIES/Premiere_Movies.dart';
import 'package:flutter/material.dart';

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
  }

  List premiereMoviesList = [];
  Future<void> fetchPremiereMovies() async {
    DocumentSnapshot premiereMovies = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection('movieDetails')
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();
    setState(() {
      premiereMoviesList =
          (premiereMovies.data() as Map<String, dynamic>)['moviesInfo'];
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
            movieImage: premiereMoviesList[index]['movieImage'],
          );
        },
      ),
    );
  }
}
