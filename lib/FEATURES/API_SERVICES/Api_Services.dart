import 'package:cruise_blade/FEATURES/MODELS/TrendingMoviesModel.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  final apikey = "93a4af9f7f9e5328eb86e1327c9bf663";

  Future<List> getTrandingMovies() async {
    var response = await dio
        .get("https://api.themoviedb.org/3/trending/all/day?api_key=$apikey");
    List trendingMovies = response.data['results'];
    List trendingMovieDetails =
        trendingMovies.map((e) => TrendingMovies.fromJson(e)).toList();
    print(trendingMovieDetails);
    return trendingMovies;
  }
}
