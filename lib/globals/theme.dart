import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      surface: Colors.white,
      primary: Color.fromARGB(255, 255, 255, 0),
      secondary: Colors.black,
      onSurface: Colors.grey,
    ),
  );

  static ThemeData darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      surface: Colors.black,
      primary: Color.fromARGB(255, 255, 255, 0),
      secondary: Colors.white, // Color(0xFF393939
    ),
  );
}
