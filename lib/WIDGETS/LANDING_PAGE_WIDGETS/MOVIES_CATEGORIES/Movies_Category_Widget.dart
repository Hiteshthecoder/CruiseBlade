import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/MOVIES_CATEGORIES/Movies_Category.dart';
import 'package:flutter/material.dart';

class MoviesCategoryWidget extends StatefulWidget {
  const MoviesCategoryWidget({super.key});

  @override
  State<MoviesCategoryWidget> createState() => _MoviesCategoryWidgetState();
}

class _MoviesCategoryWidgetState extends State<MoviesCategoryWidget> {
  @override
  void initState() {
    super.initState();
    fetchMoviesCategories();
  }

  List movieCategories = [];
  Future<void> fetchMoviesCategories() async {
    DocumentSnapshot moviesData = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection('movieDetails')
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();

    setState(() {
      movieCategories = (moviesData.data()
          as Map<String, dynamic>)['UniversalMovieData']['MovieCategories'];
    });
  }

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
        itemCount: movieCategories.length,
        itemBuilder: (context, index) {
          return MovieCategories(
            movieType: movieCategories[index],
          );
        },
      ),
    );
  }
}
