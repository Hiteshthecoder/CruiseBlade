import 'package:cruise_blade/WIDGETS/LANDING_PAGE_WIDGETS/NOW_PLAYING/NowPlayingMovies.dart';
import 'package:flutter/material.dart';

class NowPlayingMoviesWidget extends StatefulWidget {
  const NowPlayingMoviesWidget({super.key});

  @override
  State<NowPlayingMoviesWidget> createState() => _NowPlayingMoviesWidgetState();
}

class _NowPlayingMoviesWidgetState extends State<NowPlayingMoviesWidget> {
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
          : MediaQuery.of(context).size.height * 0.52,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (context, index) {
          return const NowPlayingMovies();
        },
      ),
    );
    ;
  }
}
