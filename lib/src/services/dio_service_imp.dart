import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:movieapp/src/services/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio();
  }
}
