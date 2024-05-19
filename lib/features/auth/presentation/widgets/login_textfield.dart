import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rentify/shared/presentation/constants/app_assets.dart';
import 'package:sizer/sizer.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<String>? autofillHints;
  final bool obscureText;
  final bool enabled;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String title;
  final bool isMandatory;
  final String? Function(String?)? validator;

  const LoginTextField({
    super.key,
    this.controller,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.autofillHints,
    this.obscureText = false,
    this.onChanged,
    this.onFieldSubmitted,
    this.keyboardType,
    this.enabled = true,
    this.isMandatory = false,
    this.title = '',
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor = isDarkMode ? Colors.white : Colors.black;

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Visibility(
              visible: title != '',
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.3.h),
                  child: Row(children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500)),
                    if (isMandatory)
                      Text("*",
                          style: Get.textTheme.bodyLarge
                              ?.copyWith(color: Get.theme.colorScheme.error))
                  ]))),
          SizedBox(
            height: 0.8.h,
          ),
          TextFormField(
            autofillHints: autofillHints,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: enabled ? Colors.grey : textColor,
                fontSize: enabled ? 13.sp : 13.sp,
              ),
            ),
            enabled: enabled,
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.black),
            textInputAction: textInputAction,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator, // Set validator function
          ),
          if (errorText != null && errorText!.isNotEmpty)
            Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 5),
              child: Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE3E3),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      errorText!,
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                    SvgPicture.asset(AppAssets.warningIcon),
                  ],
                ),
              ),
            ),
        ],
        ),
    );
  }
}
