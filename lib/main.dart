import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentify/shared/presentation/app_routes.dart';
import 'package:rentify/shared/presentation/pages/app_pages.dart';
import 'package:sizer/sizer.dart';

import 'shared/presentation/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        title: 'Rentify',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        getPages: AppPages.pages,
        initialRoute: AppRoutes.login,
      );
    });
  }
}
