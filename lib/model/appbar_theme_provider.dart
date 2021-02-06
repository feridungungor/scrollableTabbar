import 'package:flutter/material.dart';

class AppbarThemeProvider extends ChangeNotifier {
  int _currentAppbar = 0;

  void changeAppbarTheme(int currentAppbar){
    _currentAppbar = currentAppbar;
    notifyListeners();
  }

  int get appbarTheme => _currentAppbar;
}
