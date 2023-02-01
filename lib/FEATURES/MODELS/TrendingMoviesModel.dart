class TrendingMovies {
  bool? adult;
  String? backDropPath;
  int? id;
  String? title;
  String? language;
  String? overview;
  String? posterPath;
  String? mediaType;
  double? popularity;
  String? releaseDate;
  double? averageVote;
  int? voteCount;
  bool? video;

  TrendingMovies(
      {required this.adult,
      required this.backDropPath,
      required this.id,
      required this.title,
      required this.language,
      required this.overview,
      required this.posterPath,
      required this.mediaType,
      required this.popularity,
      required this.releaseDate,
      required this.averageVote,
      required this.voteCount,
      required this.video});

  factory TrendingMovies.fromJson(Map<String, dynamic> json) {
    return TrendingMovies(
      adult: json['adult'],
      video: json['video'],
      backDropPath: json['backdrop_path'],
      id: json['id'],
      title: json['title'],
      language: json['original_language'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      mediaType: json['media_type'],
      popularity: json['popularity'],
      releaseDate: json['release_date'],
      averageVote: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backDropPath': backDropPath,
      'id': id,
      'title': title,
      'language': language,
      'video': video,
      'overview': overview,
      'posterPath': posterPath,
      'mediaType': mediaType,
      'popularity': popularity,
      'releaseDate': releaseDate,
      'averageVote': averageVote,
      'voteCount': voteCount,
    };
  }
}
