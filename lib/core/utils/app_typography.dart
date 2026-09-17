import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

 class AppTypography {
  // Headlines using Space Grotesk
  static TextStyle headlineLarge = GoogleFonts.spaceGrotesk(
    color: AppColors.textPrimary,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headline = GoogleFonts.spaceGrotesk(
    color: AppColors.textPrimary,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headlineMedium = GoogleFonts.spaceGrotesk(
    color: AppColors.textPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headlineSmall = GoogleFonts.spaceGrotesk(
    color: AppColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    color: AppColors.textSecondary,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    color: AppColors.textSecondary,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle labelLarge = GoogleFonts.inter(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle labelMedium = GoogleFonts.inter(
    color: AppColors.textSecondary,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextTheme textTheme = TextTheme(
    displaySmall: headline,
    displayLarge: headlineLarge,
    displayMedium: headlineMedium,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
  );
}