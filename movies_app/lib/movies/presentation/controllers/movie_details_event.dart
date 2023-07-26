import 'package:equatable/equatable.dart';

abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();
}

class GetMovieDetailsEvent extends MovieDetailsEvent {
  final int id;

  const GetMovieDetailsEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetMovieRecomendationEvent extends MovieDetailsEvent {
  final int id;

  const GetMovieRecomendationEvent(this.id);
  
  @override
  List<Object?> get props => [id];


}
