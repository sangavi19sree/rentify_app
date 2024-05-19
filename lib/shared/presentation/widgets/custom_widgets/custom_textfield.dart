import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.label,
      required this.validator,
      this.keyboardType = TextInputType.text,
      this.enabled = false,
      this.maxLines = 1,
      this.inputAction = TextInputAction.next,
      this.prefix = '',
      this.icon,
      this.maxLength = 25,
      this.dateChange = false,
      this.firstDate,
      this.lastDate,
      this.dateFormat = '',
      this.isMandatory = false,
      this.onChanged});

  IconData? icon;
  String title;
  TextEditingController controller;
  String label;
  FormFieldValidator<String> validator;
  TextInputType keyboardType = TextInputType.text;
  bool enabled = false;
  bool dateChange = false;
  bool isMandatory;
  String prefix;
  int maxLines = 1;
  TextInputAction inputAction = TextInputAction.next;
  Function(String)? onChanged;
  int maxLength;
  DateTime? firstDate;
  DateTime? lastDate;
  String dateFormat = '';

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
              textAlignVertical: TextAlignVertical.center,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: maxLength,
              textInputAction: inputAction,
              onChanged: onChanged ?? (value) {},
              validator: validator,
              controller: controller,
              keyboardType: keyboardType,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.sp),
              readOnly: enabled,
              maxLines: maxLines,
              decoration: InputDecoration(
                  isDense: true,
                  errorStyle: TextStyle(fontSize: 13.sp),
                  counterText: "",
                  prefixStyle:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  prefixText: prefix != '' ? prefix : '',
                  suffixIcon: icon != null
                      ? InkWell(
                          onTap: dateChange
                              ? () async {
                                  final DateTime? picked = await showDatePicker(
                                      context: Get.context!,
                                      initialDate: DateTime.now(),
                                      firstDate: firstDate ?? DateTime(2015, 8),
                                      lastDate: lastDate ?? DateTime(2101));
                                  if (picked != null) {
                                    if (dateFormat == '') {
                                      controller.text =
                                          picked.toLocal().toString();
                                    } else {
                                      controller.text =
                                          picked.toLocal().toString();
                                    }
                                  }
                                }
                              : null,
                          child: Icon(icon, size: 18.sp),
                        )
                      : null,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.0.h),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: label,
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: enabled ? textColor : Colors.grey,
                      fontSize: enabled ? 13.sp : 13.sp)))
        ]));
  }
}
