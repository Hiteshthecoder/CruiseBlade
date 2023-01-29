import 'package:cloud_firestore/cloud_firestore.dart';

class moviedata {
  static Future<String> getUserInfo() async {
    DocumentSnapshot userInfo = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .get();
    String userName = (userInfo as Map<String, dynamic>)['userName'];
    return userName;
  }

  static Future<String> getMovieInfo() async {
    DocumentSnapshot moviesInfo = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection("movieDetails")
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();
    String movieName = (moviesInfo as Map<String, dynamic>)['movieInfo'][1];
    return movieName;
  }

  static Future<List> getMovieTimings() async {
    DocumentSnapshot moviesDates = await FirebaseFirestore.instance
        .collection('Users')
        .doc("r2TriEDb5mh947fwzhTpYVQIrJA3")
        .collection("movieDetails")
        .doc("fsIjFlPp6Y5K7Ce5ATvv")
        .get();
    List movieDates =
        (moviesDates as Map<String, dynamic>)['movieInfo'][2]['available-days'];
    List movieTimes =
        (moviesDates as Map<String, dynamic>)['movieInfo'][2]['available-time'];

    return movieDates;
  }
}
