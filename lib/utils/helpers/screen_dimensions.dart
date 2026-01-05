import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  bool get isSmallDevice => MediaQuery.of(this).size.shortestSide < 480;


  bool get isDesktop => MediaQuery.of(this).size.shortestSide >= 1024;

  /// --- 🌍 LANGUAGE / LOCALE ---
  // Locale get locale => Localizations.localeOf(this);
  // String get languageCode => Localizations.localeOf(this).languageCode;

  /// Example helpers:
  // bool get isEnglish => languageCode == 'en';
  // bool get isArabic => languageCode == 'ar';
}
