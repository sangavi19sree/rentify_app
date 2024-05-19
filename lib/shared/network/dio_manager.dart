import 'package:dio/dio.dart';
import 'package:rentify/shared/network/interceptor.dart';

class DioManager {
  final Dio _dio = Dio();

  Dio get dio => _dio;

  void updateBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  void addInterceptor(String token) {
    _dio.interceptors.add(CustomInterceptor(token));
  }

  void updateBearerToken(String token) {
    CustomInterceptor(token).updateToken(token);
  }

  void removeInterceptor() {
    _dio.interceptors.clear(keepImplyContentTypeInterceptor: false);
  }
}
