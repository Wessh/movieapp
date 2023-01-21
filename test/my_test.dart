import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movieapp/src/models/movie_db_model.dart';
import 'package:movieapp/src/services/dio_service_imp.dart';
import 'package:movieapp/src/utils/api.utils.dart';

void main() {
  test('Models Test', () async {
    var service = DioServiceImp().getDio();
    Response response = await service.get(API.REQUEST_MOVIE_LIST);
    var data = MovieDBModel.fromJson(response.data);

    log(data.name);
    log(data.movies[0].title);
    for (var movie in data.movies) {
      log(movie.title);
    }
  });
}
