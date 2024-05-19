import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;

  final String? label;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.child,
    this.label,
    this.isLoading = false,
  }) : assert(child != null || label != null);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: isLoading ? () {} : onPressed,
      child: isLoading
          ? const SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : child ??
              Text(
                label!,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
              ),
    );
  }
}
