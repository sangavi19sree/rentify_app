import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse  {
  final String status;
  final dynamic message;

  const LoginResponse({
    required this.status,
    required this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> data) =>
      _$LoginResponseFromJson(data);
}
