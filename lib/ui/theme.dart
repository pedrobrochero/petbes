import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../misc/extensions.dart';

class AppTheme {
  AppTheme._();

  static ThemeData mainTheme() {
    // Colors
    const mainColor = Colors.orange;
    // Android: Status and navigation bars
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: mainColor,
      systemNavigationBarColor: mainColor,
    ));
    // Theme
    final theme = ThemeData(
      primarySwatch: mainColor.material,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Text theme
      textTheme: GoogleFonts.comfortaaTextTheme(),
      // Input theme
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.white),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.only(left: 16, right: 16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: mainColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: mainColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: mainColor)),
      ),
    );
    return theme;
  }
}
