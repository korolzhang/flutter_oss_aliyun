import 'package:dio/dio.dart';

class RestClient {
  static Dio getInstance() {
    var dio = Dio(BaseOptions());
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }
}
