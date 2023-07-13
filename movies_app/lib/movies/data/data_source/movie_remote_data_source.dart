import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/api_constants.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final requestHeaders = {
      'Authorization': 'Bearer ${ApiConstants.token}',
      'accept': 'application/json'
    };
    final response = await Dio().get(
      ApiConstants.nowPlayingMoviesPath,
      options: Options(
        headers: requestHeaders,
      ),
    );

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final requestHeaders = {
      'Authorization': 'Bearer ${ApiConstants.token}',
      'accept': 'application/json'
    };
    final response = await Dio().get(
      ApiConstants.nowPopularMoviesPath,
      options: Options(
        headers: requestHeaders,
      ),
    );

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final requestHeaders = {
      'Authorization': 'Bearer ${ApiConstants.token}',
      'accept': 'application/json'
    };
    final response = await Dio().get(
      ApiConstants.nowTopRatedMoviesPath,
      options: Options(
        headers: requestHeaders,
      ),
    );

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
