import 'package:flutter/material.dart';

import '../pages/profile.dart';

class ScreenProvider with ChangeNotifier {
  static int _current_tab = 0;
  static Widget _currentScreen = const ProfilePage();

  get current_tab => _current_tab;

  get currentScreen => _currentScreen;

  void change_current_tab(tab_num, tab_screen) {
    _current_tab = tab_num;
    _currentScreen = tab_screen;
    notifyListeners();
  }
}
