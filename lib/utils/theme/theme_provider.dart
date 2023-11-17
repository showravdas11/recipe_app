import 'package:flutter/material.dart';
import 'package:green_recipe/utils/theme/theme.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = darkMode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme () {
    if (_themeData == darkMode) {
      themeData = lightMode;
    }else{
      themeData = darkMode;
    }
  }
}