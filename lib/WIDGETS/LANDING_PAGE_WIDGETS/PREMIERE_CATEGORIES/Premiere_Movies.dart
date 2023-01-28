import 'package:flutter/material.dart';

class PremiereMovies extends StatelessWidget {
  const PremiereMovies({
    super.key,
  });

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
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.saymedia-content.com/.image/t_share/MTc0NDgzOTg0NTgxOTI4NTgy/aquaman-review-and-trailer-did-it-try-too-hard.jpg",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
