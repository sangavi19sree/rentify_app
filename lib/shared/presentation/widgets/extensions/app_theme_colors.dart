import 'package:flutter/material.dart';

class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final Color abbreviationBgColor;
  final Color borderColor;
  final Color cardContraryColor;
  final Color checkInBackgroundColor;
  final Color checkInBadgeColor;
  final Color checkInItemColor;
  final Color checkOutBackgroundColor;
  final Color checkOutBadgeColor;
  final Color checkOutItemColor;
  final Color contraryColor;
  final Color dialogFailureColor;
  final Color dialogSuccessColor;
  final Color dialogWarningColor;
  final Color labelColor;
  final Color layoutColor;
  final Color primaryStatusBarColor;
  final Color secondaryBorderColor;
  final Color secondaryFillColor;
  final Color secondaryStatusBarColor;
  final Color tabBackgroundColor;
  final Color tabSelectedBackgroundColor;
  final Color tabSelectedIndicatorColor;
  final Color tabUnselectedIndicatorColor;
  final Color textFieldIconColor;
  final Color textFieldIconBackgroundColor;
  final Color timelineConnectorColor;
  final Color timelineDisabledColor;
  final Color timelineDotColor;
  // Investment Theme Color
  final Color tabBarSelectedBackgroundColor;
  final Color tabSelectedTextStyle;
  final Color tabUnSelectedTextStyle;

  AppThemeColors({
    required this.abbreviationBgColor,
    required this.borderColor,
    required this.cardContraryColor,
    required this.checkInBackgroundColor,
    required this.checkInBadgeColor,
    required this.checkInItemColor,
    required this.checkOutBackgroundColor,
    required this.checkOutBadgeColor,
    required this.checkOutItemColor,
    required this.contraryColor,
    required this.dialogFailureColor,
    required this.dialogSuccessColor,
    required this.dialogWarningColor,
    required this.labelColor,
    required this.layoutColor,
    required this.primaryStatusBarColor,
    required this.secondaryBorderColor,
    required this.secondaryFillColor,
    required this.secondaryStatusBarColor,
    required this.tabBackgroundColor,
    required this.tabSelectedBackgroundColor,
    required this.tabBarSelectedBackgroundColor,
    required this.tabSelectedTextStyle,
    required this.tabUnSelectedTextStyle,
    required this.tabSelectedIndicatorColor,
    required this.tabUnselectedIndicatorColor,
    required this.textFieldIconColor,
    required this.textFieldIconBackgroundColor,
    required this.timelineConnectorColor,
    required this.timelineDisabledColor,
    required this.timelineDotColor,
  });

  @override
  ThemeExtension<AppThemeColors> copyWith({
    Color? abbreviationBgColor,
    Color? borderColor,
    Color? cardContraryColor,
    Color? checkInBackgroundColor,
    Color? checkInBadgeColor,
    Color? checkInItemColor,
    Color? checkOutBackgroundColor,
    Color? checkOutBadgeColor,
    Color? checkOutItemColor,
    Color? contraryColor,
    Color? secondaryBorderColor,
    Color? dialogFailureColor,
    Color? dialogSuccessColor,
    Color? dialogWarningColor,
    Color? labelColor,
    Color? layoutColor,
    Color? primaryStatusBarColor,
    Color? secondaryFillColor,
    Color? secondaryStatusBarColor,
    Color? tabBackgroundColor,
    Color? tabSelectedBackgroundColor,
    Color? tabBarSelectedBackgroundColor,
    Color? tabUnSelectedTextStyle,
    Color? tabSelectedTextStyle,
    Color? tabLabelColor,
    Color? tabSelectedIndicatorColor,
    Color? tabUnselectedIndicatorColor,
    Color? textFieldIconColor,
    Color? textFieldIconBackgroundColor,
    Color? timelineConnectorColor,
    Color? timelineDisabledColor,
    Color? timelineDotColor,
  }) =>
      AppThemeColors(
        abbreviationBgColor: abbreviationBgColor ?? this.abbreviationBgColor,
        borderColor: borderColor ?? this.borderColor,
        cardContraryColor: cardContraryColor ?? this.cardContraryColor,
        checkInBackgroundColor:
            checkInBackgroundColor ?? this.checkInBackgroundColor,
        checkInBadgeColor: checkInBadgeColor ?? this.checkInBadgeColor,
        checkInItemColor: checkInItemColor ?? this.checkInItemColor,
        checkOutBackgroundColor:
            checkOutBackgroundColor ?? this.checkOutBackgroundColor,
        checkOutBadgeColor: checkOutBadgeColor ?? this.checkOutBadgeColor,
        checkOutItemColor: checkOutItemColor ?? this.checkOutItemColor,
        contraryColor: contraryColor ?? this.contraryColor,
        dialogFailureColor: dialogFailureColor ?? this.dialogFailureColor,
        dialogSuccessColor: dialogSuccessColor ?? this.dialogSuccessColor,
        dialogWarningColor: dialogWarningColor ?? this.dialogWarningColor,
        labelColor: labelColor ?? this.labelColor,
        layoutColor: layoutColor ?? this.layoutColor,
        primaryStatusBarColor:
            primaryStatusBarColor ?? this.primaryStatusBarColor,
        secondaryBorderColor: secondaryBorderColor ?? this.secondaryBorderColor,
        secondaryFillColor: secondaryFillColor ?? this.secondaryFillColor,
        secondaryStatusBarColor:
            secondaryStatusBarColor ?? this.secondaryStatusBarColor,
        tabBackgroundColor: tabBackgroundColor ?? this.tabBackgroundColor,
        tabSelectedBackgroundColor:
            tabSelectedBackgroundColor ?? this.tabSelectedBackgroundColor,
        tabBarSelectedBackgroundColor:
            tabBarSelectedBackgroundColor ?? this.tabBarSelectedBackgroundColor,
        tabSelectedTextStyle: tabSelectedTextStyle ?? this.tabSelectedTextStyle,
        tabUnSelectedTextStyle:
            tabUnSelectedTextStyle ?? this.tabUnSelectedTextStyle,
        tabSelectedIndicatorColor:
            tabSelectedIndicatorColor ?? this.tabSelectedIndicatorColor,
        tabUnselectedIndicatorColor:
            tabUnselectedIndicatorColor ?? this.tabUnselectedIndicatorColor,
        textFieldIconColor: textFieldIconColor ?? this.textFieldIconColor,
        textFieldIconBackgroundColor:
            textFieldIconBackgroundColor ?? this.textFieldIconBackgroundColor,
        timelineConnectorColor:
            timelineConnectorColor ?? this.timelineConnectorColor,
        timelineDisabledColor:
            timelineDisabledColor ?? this.timelineDisabledColor,
        timelineDotColor: timelineDotColor ?? this.timelineDotColor,
      );

  @override
  ThemeExtension<AppThemeColors> lerp(
      covariant ThemeExtension<AppThemeColors>? other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }

    return AppThemeColors(
      abbreviationBgColor:
          Color.lerp(abbreviationBgColor, other.abbreviationBgColor, t) ??
              abbreviationBgColor,
      borderColor: Color.lerp(borderColor, other.borderColor, t) ?? borderColor,
      cardContraryColor:
          Color.lerp(cardContraryColor, other.cardContraryColor, t) ??
              cardContraryColor,
      checkInBackgroundColor:
          Color.lerp(checkInBackgroundColor, other.checkInBackgroundColor, t) ??
              checkInBackgroundColor,
      checkInBadgeColor:
          Color.lerp(checkInBadgeColor, other.checkInBadgeColor, t) ??
              checkInBadgeColor,
      checkInItemColor:
          Color.lerp(checkInItemColor, other.checkInItemColor, t) ??
              checkInItemColor,
      checkOutBackgroundColor: Color.lerp(
              checkOutBackgroundColor, other.checkOutBackgroundColor, t) ??
          checkOutBackgroundColor,
      checkOutBadgeColor:
          Color.lerp(checkOutBadgeColor, other.checkOutBadgeColor, t) ??
              checkOutBadgeColor,
      checkOutItemColor:
          Color.lerp(checkOutItemColor, other.checkOutItemColor, t) ??
              checkOutItemColor,
      contraryColor:
          Color.lerp(contraryColor, other.contraryColor, t) ?? contraryColor,
      dialogFailureColor:
          Color.lerp(dialogFailureColor, other.dialogFailureColor, t) ??
              dialogFailureColor,
      dialogSuccessColor:
          Color.lerp(dialogSuccessColor, other.dialogSuccessColor, t) ??
              dialogSuccessColor,
      dialogWarningColor:
          Color.lerp(dialogWarningColor, other.dialogWarningColor, t) ??
              dialogWarningColor,
      labelColor: Color.lerp(labelColor, other.labelColor, t) ?? labelColor,
      layoutColor: Color.lerp(layoutColor, other.layoutColor, t) ?? layoutColor,
      primaryStatusBarColor:
          Color.lerp(primaryStatusBarColor, other.primaryStatusBarColor, t) ??
              primaryStatusBarColor,
      secondaryBorderColor:
          Color.lerp(secondaryBorderColor, other.secondaryBorderColor, t) ??
              secondaryBorderColor,
      secondaryFillColor:
          Color.lerp(secondaryFillColor, other.secondaryFillColor, t) ??
              secondaryFillColor,
      secondaryStatusBarColor: Color.lerp(
              secondaryStatusBarColor, other.secondaryStatusBarColor, t) ??
          secondaryStatusBarColor,
      tabBackgroundColor:
          Color.lerp(tabBackgroundColor, other.tabBackgroundColor, t) ??
              tabBackgroundColor,
      tabSelectedBackgroundColor: Color.lerp(tabSelectedBackgroundColor,
              other.tabSelectedBackgroundColor, t) ??
          tabSelectedBackgroundColor,
      tabBarSelectedBackgroundColor: Color.lerp(tabBarSelectedBackgroundColor,
              other.tabBarSelectedBackgroundColor, t) ??
          tabBarSelectedBackgroundColor,
      tabSelectedTextStyle:
          Color.lerp(tabSelectedTextStyle, other.tabSelectedTextStyle, t) ??
              tabSelectedTextStyle,
      tabUnSelectedTextStyle:
          Color.lerp(tabUnSelectedTextStyle, other.tabUnSelectedTextStyle, t) ??
              tabUnSelectedTextStyle,
      tabSelectedIndicatorColor: Color.lerp(
              tabSelectedIndicatorColor, other.tabSelectedIndicatorColor, t) ??
          tabSelectedIndicatorColor,
      tabUnselectedIndicatorColor: Color.lerp(tabUnselectedIndicatorColor,
              other.tabUnselectedIndicatorColor, t) ??
          tabUnselectedIndicatorColor,
      textFieldIconColor:
          Color.lerp(textFieldIconColor, other.textFieldIconColor, t) ??
              textFieldIconColor,
      textFieldIconBackgroundColor: Color.lerp(textFieldIconBackgroundColor,
              other.textFieldIconBackgroundColor, t) ??
          textFieldIconBackgroundColor,
      timelineConnectorColor:
          Color.lerp(timelineConnectorColor, other.timelineConnectorColor, t) ??
              timelineConnectorColor,
      timelineDisabledColor:
          Color.lerp(timelineDisabledColor, other.timelineDisabledColor, t) ??
              timelineDisabledColor,
      timelineDotColor:
          Color.lerp(timelineDotColor, other.timelineDotColor, t) ??
              timelineDotColor,
    );
  }
}
