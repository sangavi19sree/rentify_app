import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SecondaryButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;

  final String? label;
  final bool isLoading;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    this.child,
    this.label,
    this.isLoading = false,
  }) : assert(child != null || label != null);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? null : onPressed,
      style: Get.theme.filledButtonTheme.style?.copyWith(
        backgroundColor: MaterialStatePropertyAll(
            Get.isDarkMode ? Get.theme.colorScheme.secondary : Colors.black),
      ),
      child: isLoading
          ? const SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : child ??
              Text(
                label!,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
    );
  }
}
