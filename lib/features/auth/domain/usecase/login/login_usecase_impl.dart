import 'package:rentify/features/auth/data/models/response/login_request.dart';
import 'package:rentify/features/auth/domain/repository/auth_repository.dart';
import 'package:rentify/features/auth/domain/usecase/login/login_usecase.dart';
import 'package:rentify/shared/domain/data_response.dart';

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCaseImpl(
    this._authRepository,
  );

  @override
  Future<DataResponse> login(LoginRequest request) async {

    final DataResponse response = await _authRepository.login(request);

    return response;
  }
}
