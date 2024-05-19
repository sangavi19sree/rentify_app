import 'package:flutter/material.dart';

class TextFieldState {
  String? errorText;
  TextEditingController controller = TextEditingController();
  bool enabled = true;
  FocusNode focusNode = FocusNode();

  TextFieldState();
}
