
import 'package:rentify/features/auth/data/models/response/login_request.dart';
import 'package:rentify/shared/domain/data_response.dart';

abstract class LoginUseCase {
  Future<DataResponse> login(LoginRequest request);
}
