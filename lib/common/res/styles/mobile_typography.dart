import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/constants/app_fonts.dart';

class MobileTypography {
  static const TextStyle elevatedButtonTextStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle get displayLarge => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w700,
        fontSize: 34.0,
      );
  static TextStyle get displayMedium => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 30.0,
      );

  static TextStyle get displaySmall => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 26,
      );
  static TextStyle get headlineLarge => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  static TextStyle get headlineMedium => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );

  static TextStyle get headlineSmall => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w300,
        fontSize: 18,
      );
  static TextStyle get titleLarge => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get titleMedium => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      );

  static TextStyle get titleSmall => TextStyle(
        fontFamily: AppFonts.pangram,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  static TextStyle get labelLarge => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get labelMedium => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  static TextStyle get labelSmall => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 10,
      );

  static TextStyle get bodyLarge => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      );

  static TextStyle get bodyMedium => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w300,
        fontSize: 12,
      );

  static TextStyle get bodySmall => TextStyle(
        fontFamily: AppFonts.poppins,
        fontWeight: FontWeight.w300,
        fontSize: 10,
      );
}
