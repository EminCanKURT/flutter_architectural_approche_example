import 'package:flutter/material.dart';
import 'package:flutter_architectural_approach_example/product/init/theme/custom_color_sheme.dart';
import 'package:flutter_architectural_approach_example/product/init/theme/custom_theme.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom light theme
final class CustomLightTheme implements CustomTheme {
  /// Light theme
  @override
  ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorSheme.lightScheme,
        floatingActionButtonTheme: floatingActionButtonTheme,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      const FloatingActionButtonThemeData();
}
