import 'package:flutter/material.dart';

 class AppColors {
  // Main Palette Colors from Design
  static const Color primary = Color(0xFF7C5CFF);
  static const Color secondary = Color(0xFFE9B8FF);
  static const Color tertiary = Color(0xFFFFC857);
  static const Color neutral = Color(0xFF0B0B12);

  // Surface & Background Colors
  static const Color background = Color(0xFF0B0B12);
  static const Color surface = Color(0xFF161622);
  static const Color surfaceVariant = Color(0xFF222232);

  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF9E9E9E);

  // Accent & Functional Colors
  static const Color errorRed = Color(0xFFFF5252);

  // Dark ColorScheme Definition
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: primary,
    secondary: secondary,
    tertiary: tertiary,
    surface: surface,
    surfaceContainerHighest: surfaceVariant,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onTertiary: Colors.black,
    onSurface: textPrimary,
    error: errorRed,
  );
}