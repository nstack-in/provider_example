import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  void toggleTheme() {
    final isDark = _theme == ThemeData.dark();
    if (isDark) {
      _theme = ThemeData.light();
    } else {
      _theme = ThemeData.dark();
    }
    notifyListeners();
  }
}
