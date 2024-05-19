import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants/app_colors.dart';
import 'constants/app_fonts.dart';
import 'widgets/extensions/app_theme_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightAppBarColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.onPrimaryColor,
        fontFamily: AppFonts.poppins,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelStyle: TextStyle(
        color: AppColors.itTabUnselectedTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightBottomBgColor,
      selectedIconTheme: IconThemeData(color: Color(0xFFC09300)),
      unselectedIconTheme: IconThemeData(color: Colors.black),
    ),
    cardColor: AppColors.lightCardColor,
    cardTheme: CardTheme(
      color: AppColors.lightCardColor,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.onPrimaryColor;
          }

          return Colors.transparent;
        },
      ),
    ),
    chipTheme: const ChipThemeData(
      selectedColor: AppColors.lightSelectedChipColor,
      disabledColor: Colors.white,
      side: BorderSide(
        color: AppColors.lightBorderColor,
      ),
      labelStyle: TextStyle(
        color: AppColors.itTabUnselectedTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
      secondaryLabelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.lightSecondaryColor,
      primarySwatch: Colors.amber,
      backgroundColor: AppColors.lightBackground,
      cardColor: AppColors.lightCardColor,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.lightBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    disabledColor: AppColors.lightDisabledColor,
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.lightBackground,
    ),
    extensions: <ThemeExtension<dynamic>>[
      AppThemeColors(
        abbreviationBgColor: AppColors.lightAbbreviationBgColor,
        borderColor: AppColors.lightBorderColor,
        cardContraryColor: AppColors.lightContraryCardColor,
        checkInBackgroundColor: AppColors.checkInBackgroundColor,
        checkInBadgeColor: AppColors.checkInBadgeColor,
        checkInItemColor: AppColors.checkInItemColor,
        checkOutBackgroundColor: AppColors.checkOutBackgroundColor,
        checkOutBadgeColor: AppColors.checkOutBadgeColor,
        checkOutItemColor: AppColors.checkOutItemColor,
        contraryColor: Colors.black,
        dialogFailureColor: AppColors.lightDialogFailureColor,
        dialogSuccessColor: AppColors.lightDialogSuccessColor,
        dialogWarningColor: AppColors.lightDialogWarningColor,
        labelColor: AppColors.lightProfileDetailLabelColor,
        layoutColor: AppColors.lightLayoutColor,
        primaryStatusBarColor: AppColors.lightAppBarColor,
        secondaryBorderColor: AppColors.lightSecondaryBorderColor,
        secondaryFillColor: AppColors.lightSecondaryFillColor,
        secondaryStatusBarColor: AppColors.lightBackground,
        tabBackgroundColor: Colors.white,
        tabSelectedBackgroundColor: AppColors.lightSelectedChipColor,
        tabBarSelectedBackgroundColor: AppColors.lightSelectedChipColor,
        tabSelectedIndicatorColor: AppColors.onPrimaryColor,
        tabUnselectedIndicatorColor: AppColors.unselectedTabIndicatorColor,
        textFieldIconColor: AppColors.textFieldIconColor,
        textFieldIconBackgroundColor: AppColors.textFieldIconBackgroundColor,
        timelineConnectorColor: AppColors.timelineConnectorColor,
        timelineDisabledColor: AppColors.timelineDisabledColor,
        timelineDotColor: AppColors.timelineDotColor,
        tabSelectedTextStyle: AppColors.itTabUnselectedTextColor,
        tabUnSelectedTextStyle: Colors.white,
      ),
    ],
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        textStyle: const TextStyle(
          fontFamily: AppFonts.poppins,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    fontFamily: AppFonts.poppins,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      errorMaxLines: 2,
      fillColor: AppColors.lightFillColor,
      filled: true,
      hintStyle: const TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
    ),
    radioTheme: RadioThemeData(
      splashRadius: 16,
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }

          return AppColors.lightSecondaryColor;
        },
      ),
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.onPrimaryColor),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontWeight: FontWeight.w500),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.lightProfileDetailLabelColor,
      ),
    ),
    useMaterial3: false,
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkAppBarColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: AppFonts.poppins,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(
          color: AppColors.itTabselectedTextColor,
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.poppins,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.itTabUnselectedTextColor,
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.poppins,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBottomBgColor,
      selectedIconTheme: IconThemeData(color: Color(0xFFC09300)),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
    cardColor: AppColors.darkCardColor,
    cardTheme: CardTheme(
      color: AppColors.darkCardColor,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.onPrimaryColor;
          }

          return Colors.transparent;
        },
      ),
    ),
    chipTheme: const ChipThemeData(
      selectedColor: AppColors.darkSelectedChipColor,
      disabledColor: Colors.black,
      side: BorderSide(
        color: AppColors.darkBorderColor,
      ),
      labelStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
      secondaryLabelStyle: TextStyle(
        color: AppColors.itTabUnselectedTextColor,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.poppins,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.darkSecondaryColor,
      primarySwatch: Colors.amber,
      backgroundColor: AppColors.darkBackground,
      cardColor: AppColors.darkCardColor,
      brightness: Brightness.dark,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.darkBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    disabledColor: AppColors.darkDisabledColor,
    drawerTheme:
        const DrawerThemeData(backgroundColor: AppColors.darkBackground),
    extensions: <ThemeExtension<dynamic>>[
      AppThemeColors(
        abbreviationBgColor: AppColors.darkAbbreviationBgColor,
        borderColor: AppColors.darkBorderColor,
        cardContraryColor: AppColors.darkContraryCardColor,
        checkInBackgroundColor: AppColors.checkInBackgroundColor,
        checkInBadgeColor: AppColors.checkInBadgeColor,
        checkInItemColor: AppColors.checkInItemColor,
        checkOutBackgroundColor: AppColors.checkOutBackgroundColor,
        checkOutBadgeColor: AppColors.checkOutBadgeColor,
        checkOutItemColor: AppColors.checkOutItemColor,
        contraryColor: Colors.white,
        dialogFailureColor: AppColors.darkDialogFailureColor,
        dialogSuccessColor: AppColors.darkDialogSuccessColor,
        dialogWarningColor: AppColors.darkDialogWarningColor,
        labelColor: AppColors.darkProfileDetailLabelColor,
        layoutColor: AppColors.darkLayoutColor,
        primaryStatusBarColor: AppColors.darkAppBarColor,
        secondaryBorderColor: AppColors.darkSecondaryBorderColor,
        secondaryFillColor: AppColors.darkSecondaryFillColor,
        secondaryStatusBarColor: AppColors.darkBackground,
        tabBackgroundColor: AppColors.lightSelectedChipColor,
        tabBarSelectedBackgroundColor: AppColors.primaryColor,
        tabSelectedBackgroundColor: Colors.white,
        tabSelectedIndicatorColor: AppColors.primaryColor,
        tabUnselectedIndicatorColor: AppColors.unselectedTabIndicatorColor,
        textFieldIconColor: AppColors.textFieldIconColor,
        textFieldIconBackgroundColor: AppColors.textFieldIconBackgroundColor,
        timelineConnectorColor: AppColors.timelineConnectorColor,
        timelineDisabledColor: AppColors.timelineDisabledColor,
        timelineDotColor: AppColors.timelineDotColor,
        tabUnSelectedTextStyle: AppColors.textFieldIconColor,
        tabSelectedTextStyle: AppColors.itTabselectedTextColor,
      ),
    ],
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontFamily: AppFonts.poppins,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    fontFamily: AppFonts.poppins,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.darkBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.darkBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.darkBorderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      errorMaxLines: 2,
      fillColor: AppColors.darkFillColor,
      filled: true,
      hintStyle: const TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
    ),
    radioTheme: RadioThemeData(
      splashRadius: 16,
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primaryColor;
          }

          return AppColors.darkSecondaryColor;
        },
      ),
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.darkSecondaryFillColor,
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontWeight: FontWeight.w600),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.darkProfileDetailLabelColor,
      ),
    ),
    useMaterial3: false,
  );
}

bool isLightMode = false;
