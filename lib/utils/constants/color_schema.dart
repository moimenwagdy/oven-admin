import 'package:flutter/material.dart';
import 'colors.dart';

ColorScheme buildColorScheme() {
  return const ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.white,
    secondary: secondary,
    onSecondary: onSecondary,
    surface: surface,
    onSurface: onSurface,
    error: error,
    onError: onError,
    onSecondaryFixed: onSecondaryFixed,
  );
}
