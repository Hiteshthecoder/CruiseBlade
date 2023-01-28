import 'package:flutter/material.dart';

class UpComingMovies extends StatelessWidget {
  const UpComingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width * 0.30
          : MediaQuery.of(context).size.width * 0.18,
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.02,
            )
          : EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.01,
            ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        image: const DecorationImage(
          image: NetworkImage(
            "https://www.istockphoto.com/resources/images/PhotoFTLP/P4-JAN-iStock-1432854572.jpg",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
