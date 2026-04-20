import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
      elevation: 3.0,
    ),
  );
  static ThemeData darkTheme = ThemeData(brightness: .dark);
}
