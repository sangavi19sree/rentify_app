import 'package:dio/dio.dart';
import 'package:rentify/features/auth/data/data_source/remote/auth_api_service.dart';
import 'package:rentify/features/auth/data/models/response/login_request.dart';
import 'package:rentify/features/auth/data/models/response/login_response.dart';
import 'package:rentify/features/auth/domain/repository/auth_repository.dart';
import 'package:rentify/shared/domain/data_response.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);

  @override
  Future<DataResponse<LoginResponse>> login(LoginRequest request) async {
    try {
      final httpResponse = await _authApiService.login(
          request.firstName, request.lastName, request.email,request.phoneNumber);

      return DataResponse(
        status: httpResponse.data.status,
        data: httpResponse.data,
        message: httpResponse.data.message is List
            ? (httpResponse.data.message as List).join("\n")
            : httpResponse.data.message,
      );
    } on DioException catch (e) {
      return DataResponse.fromDioException(e);
    }
  }
}
