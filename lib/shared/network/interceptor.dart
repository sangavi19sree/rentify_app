import 'package:dio/dio.dart';

class CustomInterceptor extends QueuedInterceptorsWrapper {
  String token;

  CustomInterceptor(this.token);

  void updateToken(String token) {
    this.token = token;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Accept'] = 'application/json';
    options.headers['authorization'] = 'Bearer $token';
    options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    options.receiveTimeout = const Duration(milliseconds: 60000);

    return super.onRequest(options, handler);
  }

  @override
  Future<Object> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
    return {};
  }
}
