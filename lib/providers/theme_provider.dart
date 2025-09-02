import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF4F8FFF),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F8FFF)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
        ),
        cardColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xFFF7F9FB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF4F8FFF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F8FFF),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
        ),
        cardColor: const Color(0xFF23272F),
        scaffoldBackgroundColor: const Color(0xFF181A20),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF23272F),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      );
}