import 'package:get/get.dart';
import 'package:rentify/shared/presentation/widgets/custom_widgets/textfield_state.dart';

extension ErrorTextExtension on Rx<TextFieldState> {
  void clearError() {
    update((state) => state?.errorText = null);
  }

  void error(String? errorText) {
    update((state) => state?.errorText = errorText ?? "");
  }
}

extension TextFieldExtension on Rx<TextFieldState> {
  String get trimmed => value.controller.text.trim();

  String get text => value.controller.text;

  void trim() => value.controller.text = value.controller.text.trim();
}
