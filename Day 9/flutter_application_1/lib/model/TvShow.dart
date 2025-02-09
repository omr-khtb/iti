class TvShow {
  final bool adult;
  //final String backdropPath;
  //final List<int> genreIds;
  final List<String> origincountry;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String firstairdate;
  final String name;
  final double voteAverage;
  final int voteCount;

  TvShow(
      {required this.adult,
      //required this.backdropPath,
      //required this.genreIds,
      required this.origincountry,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.firstairdate,
      required this.name,
      required this.voteAverage,
      required this.voteCount});

 factory TvShow.fromJson(Map<String, dynamic> json) {
  return TvShow(
   adult :json['adult'],
    //backdropPath :json['backdrop_path'],
    //genreIds : json['genre_ids'].cast<int>(),
    origincountry :json['origin_country'].cast<String>(),
    id : json['id'],
    originalLanguage : json['original_language'],
    originalTitle : json['original_name'],
    overview : json['overview'],
    popularity :json['popularity'],
    posterPath :json['poster_path'],
    firstairdate: json['first_air_date'],
    name : json['name'],
    voteAverage : json['vote_average'],
    voteCount : json['vote_count']);
  }
}
