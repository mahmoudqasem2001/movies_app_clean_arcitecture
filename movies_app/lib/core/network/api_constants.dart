class ApiConstants {
  static const token =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ODNhN2Y2NDY4ZDZjY2I3NThmMzhkMWE4NDczMmI1YSIsInN1YiI6IjY0YWFhMzYwM2UyZWM4MDEyZWUzYTkwMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MlloPzzuO23sy0vdXPx92IUbFFy9ZoMOJRF9eDN15Ko";
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?language=en-US&page=1";
  static const String nowPopularMoviesPath =
      "$baseUrl/movie/popular?language=en-US&page=1";
  static const String nowTopRatedMoviesPath =
      "$baseUrl/movie/top_rated?language=en-US&page=1";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String movieDetailsPath(int movieId) => "$baseUrl/movie/$movieId";
  static String recommendationPath(int movieId) => "$baseUrl/movie/$movieId/recommendations";
  static String imageUrl(String path) => "$baseImageUrl$path";
}
