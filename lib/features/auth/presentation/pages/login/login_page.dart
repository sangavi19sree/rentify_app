import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:rentify/features/auth/presentation/widgets/login_textfield.dart';
import 'package:sizer/sizer.dart';
import '../../controller/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50),
        Padding(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Text(
              "RENTIFY",
              style: Get.textTheme.titleLarge
            ))),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello 👋",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18.sp)),
                      SizedBox(height: 2.h),
                      Text("Renting is Easier Here",
                          style: TextStyle(color: Colors.grey)),
                    ]))),
        Expanded(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          physics: const BouncingScrollPhysics(),
          child: AutofillGroup(
            child: Obx(
              () => Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    LoginTextField(
                      title: "First Name",
                      isMandatory: true,
                      autofillHints: const [AutofillHints.name],
                      controller: controller.firstNameState.value.controller,
                      hintText: "Enter your First Name",
                      errorText: controller.firstNameState.value.errorText,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your First Name";
                        }
                      },
                    ),
                    LoginTextField(
                        title: "Last Name",
                        autofillHints: const [AutofillHints.familyName],
                        controller: controller.lastNameState.value.controller,
                        hintText: "Enter your Last Name",
                        errorText: controller.lastNameState.value.errorText,
                        textInputAction: TextInputAction.next),
                    LoginTextField(
                      title: "Email",
                      hintText: "Enter your email",
                      isMandatory: true,
                      controller: controller.emailState.value.controller,
                      errorText: controller.emailState.value.errorText,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!GetUtils.isEmail(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    LoginTextField(
                      title: "Contact Number",
                      isMandatory: true,
                      autofillHints: const [AutofillHints.telephoneNumber],
                      controller: controller.phoneState.value.controller,
                      hintText: "Enter your Phone Number",
                      errorText: controller.phoneState.value.errorText,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        } else if (!isValidMobile(value)) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?"),
                      ),
                    ),
                    const SizedBox(height: 8),
                    FilledButton(
                      onPressed: controller.login,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 56,
                        ),
                        child: controller.isLoggingIn.value
                            ? const SizedBox(
                                height: 16,
                                width: 16,
                                child: CircularProgressIndicator(
                                  color: Colors.black,
                                ),
                              )
                            : Text("Register"),
                      ),
                    ),
                  ].animate(interval: 10.ms).fade().slideY(begin: 0.1, end: 0),
                ),
              ),
            ),
          ),
        )),
      ]),
    );
  }
}

bool isValidMobile(String? value) {
  if (value == null || value.isEmpty) {
    return false;
  }
  final RegExp mobileRegex = RegExp(r'^[0-9]{10}$');
  return mobileRegex.hasMatch(value);
}
