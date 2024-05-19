import 'package:dio/dio.dart';
import 'package:rentify/features/auth/data/models/response/login_response.dart';
import 'package:rentify/features/auth/domain/resources/auth_api_arguments.dart';
import 'package:rentify/features/auth/domain/resources/auth_api_routes.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST(AuthAPIRoutes.login)
  @FormUrlEncoded()
  Future<HttpResponse<LoginResponse>> login(
    @Field(AuthAPIArguments.firstName) String firstName,
    @Field(AuthAPIArguments.lastName) String? lastName,
    @Field(AuthAPIArguments.email) String email,
    @Field(AuthAPIArguments.phoneNumber) String phoneNumber,
  );
}
