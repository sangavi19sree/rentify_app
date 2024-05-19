import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rentify/shared/presentation/widgets/custom_widgets/textfield_state.dart';

class LoginController extends GetxController {
  Rx<TextFieldState> firstNameState = TextFieldState().obs;
  Rx<TextFieldState> lastNameState = TextFieldState().obs;
  Rx<TextFieldState> emailState = TextFieldState().obs;
  Rx<TextFieldState> phoneState = TextFieldState().obs;
  final formKey = GlobalKey<FormState>();

  RxBool isLoggingIn = false.obs;

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      isLoggingIn.value = true;
    }
    handleLogin();
  }

  void handleLogin() {
    bool isSeller = false;

    if (isSeller) {
      Get.offNamed('/seller');
    } else
      Get.offNamed('/buyer');
  }
}
