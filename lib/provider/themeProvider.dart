import 'package:flutter/cupertino.dart';
import 'package:cinarlaw/provider/themePreference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference darkThemePref = ThemePreference();
  ScrollController scrollController = ScrollController(initialScrollOffset: 160);

  get scroll => scrollController;

  set scroll(int i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  // App Theme
  bool _lightTheme = true;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
    darkThemePref.setDarkTheme(value);

    notifyListeners();
  }
}
