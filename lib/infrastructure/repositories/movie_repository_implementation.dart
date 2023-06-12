import '../../domain/datasources/movies_datasource.dart';

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRepositoryImplementation extends MoviesRepository {
  final MoviesDatasource datasource;
  MovieRepositoryImplementation(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
