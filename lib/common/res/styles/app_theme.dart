import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/constants/app_fonts.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppLightColors.lightBackground,
    elevation: 0,
  ),
  canvasColor: Colors.transparent,
  fontFamily: 'Product Sans',
  scaffoldBackgroundColor: AppLightColors.lightScaffoldBackground,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: AppLightColors.lightSeedColor,
    primary: AppLightColors.lightPrimaryColor,
    secondary: AppLightColors.lightSecondaryColor,
    tertiary: AppLightColors.lightTertiaryColor,
    background: AppLightColors.lightBackground,
    onBackground: AppLightColors.lightOnBackground,
  ),
  progressIndicatorTheme:
      ProgressIndicatorThemeData(color: AppLightColors.lightPrimaryColor),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      foregroundColor: AppLightColors.lightBackground,
      textStyle: MobileTypography.elevatedButtonTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        fontFamily: AppFonts.pangram,
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: MobileTypography.displayLarge,
    displayMedium: MobileTypography.displayMedium,
    displaySmall: MobileTypography.displaySmall,
    headlineLarge: MobileTypography.headlineLarge,
    headlineMedium: MobileTypography.headlineMedium,
    headlineSmall: MobileTypography.headlineSmall,
    titleLarge: MobileTypography.titleLarge,
    titleMedium: MobileTypography.titleMedium,
    titleSmall: MobileTypography.titleSmall,
    labelLarge: MobileTypography.labelLarge,
    labelMedium: MobileTypography.labelMedium,
    labelSmall: MobileTypography.labelSmall,
    bodyLarge: MobileTypography.bodyLarge,
    bodyMedium: MobileTypography.bodyMedium,
    bodySmall: MobileTypography.bodySmall,
  ),
);
