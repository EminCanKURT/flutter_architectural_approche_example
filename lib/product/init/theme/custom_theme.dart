import 'package:flutter/material.dart';

/// Custom theme
abstract class CustomTheme {
  /// ortak theme
  ThemeData get theme;

  /// özelleştirmek istedilerini buraya ekleyebilirsin artık
  FloatingActionButtonThemeData get floatingActionButtonTheme;
}
