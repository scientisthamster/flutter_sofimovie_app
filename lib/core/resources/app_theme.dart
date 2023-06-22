import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sofimovie_app/core/resources/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getApplicationTheme() => ThemeData(
      scaffoldBackgroundColor: AppColors.primaryBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.secondaryBackground,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.primaryText,
          type: BottomNavigationBarType.fixed),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryBackground,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle:
            _getTextStyle(fontSize: 18, color: AppColors.secondaryText),
      ),
      textTheme: TextTheme(
        titleMedium:
            _getTextStyle(fontSize: 20, color: AppColors.secondaryText),
        titleSmall: _getTextStyle(fontSize: 18, color: AppColors.secondaryText),
        bodyLarge: _getTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryText),
        bodyMedium: _getTextStyle(fontSize: 14, color: AppColors.secondaryText),
        bodySmall: _getTextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryText),
      ),
    );

TextStyle _getTextStyle({
  required double fontSize,
  FontWeight fontWeight = FontWeight.w600,
  required Color color,
}) =>
    GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
