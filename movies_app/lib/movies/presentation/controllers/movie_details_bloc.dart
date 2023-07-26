import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_use_case.dart';
import 'package:movies_app/movies/presentation/controllers/movie_details_event.dart';
import 'package:movies_app/movies/presentation/controllers/movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  MovieDetailsBloc(this.getMovieDetailsUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);

    on<GetMovieRecommendationEvent>(_getMovieRecommendation);
  }

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold(
      (l) => emit(state.copyWith(
          movieDetailsState: RequestState.error,
          movieDetailsmessage: l.message)),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getMovieRecommendation(
      GetMovieRecommendationEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold(
      (l) => emit(state.copyWith(
          movieDetailsState: RequestState.error,
          movieDetailsmessage: l.message)),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
  }
}
