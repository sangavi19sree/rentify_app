class LoginRequest {
  String firstName;
  String ?lastName;
  String email;
  String phoneNumber;

  LoginRequest(
      {required this.firstName,
      this.lastName,
      required this.email,
      required this.phoneNumber});
}
