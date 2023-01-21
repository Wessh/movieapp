import 'package:movieapp/src/models/movie_db_model.dart';
import 'package:movieapp/src/repositories/movies_repository.dart';
import 'package:movieapp/src/services/dio_service.dart';
import 'package:movieapp/src/utils/api.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override
  Future<MovieDBModel> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return MovieDBModel.fromJson(result.data);
  }
}
