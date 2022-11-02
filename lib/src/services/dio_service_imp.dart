import 'package:dio/dio.dart';
import 'package:movieapp/src/services/dio_service.dart';
import 'package:movieapp/src/utils/key.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization': 'Bearer $keyJWT'
        },
      ),
    );
  }
}
