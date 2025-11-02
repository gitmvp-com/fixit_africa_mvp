import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  // Trust-Forward Blue Spectrum Color Palette
  static const Color primary = Color(0xFF1172d4);
  static const Color primaryLight = Color(0xFF4a8ee8);
  static const Color background = Color(0xFFf0f2f4);
  static const Color surface = Color(0xFFffffff);
  static const Color textPrimary = Color(0xFF111418);
  static const Color textSecondary = Color(0xFF617589);
  static const Color success = Color(0xFF059669);
  static const Color warning = Color(0xFFdc6803);
  static const Color error = Color(0xFFdc2626);
  static const Color border = Color(0xFFe5e7eb);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: surface,
      primaryContainer: primaryLight,
      onPrimaryContainer: textPrimary,
      secondary: success,
      onSecondary: surface,
      secondaryContainer: success.withValues(alpha: 0.1),
      onSecondaryContainer: success,
      tertiary: warning,
      onTertiary: surface,
      tertiaryContainer: warning.withValues(alpha: 0.1),
      onTertiaryContainer: warning,
      error: error,
      onError: surface,
      errorContainer: error.withValues(alpha: 0.1),
      onErrorContainer: error,
      surface: surface,
      onSurface: textPrimary,
      onSurfaceVariant: textSecondary,
      outline: border,
      outlineVariant: border.withValues(alpha: 0.5),
      shadow: const Color(0x0f000000),
      scrim: textPrimary.withValues(alpha: 0.5),
      inverseSurface: textPrimary,
      onInverseSurface: surface,
      inversePrimary: primaryLight,
    ),
    scaffoldBackgroundColor: background,
    cardColor: surface,
    dividerColor: border,
    appBarTheme: AppBarTheme(
      backgroundColor: surface,
      foregroundColor: textPrimary,
      elevation: 2.0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      iconTheme: const IconThemeData(
        color: textPrimary,
        size: 24,
      ),
    ),
    textTheme: _buildLightTextTheme(),
  );

  static TextTheme _buildLightTextTheme() {
    return TextTheme(
      displayLarge: GoogleFonts.inter(
        fontSize: 57,
        fontWeight: FontWeight.w900,
        color: textPrimary,
      ),
      headlineLarge: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      titleLarge: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
    );
  }
}
