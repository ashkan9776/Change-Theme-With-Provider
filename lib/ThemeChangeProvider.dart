import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ThemeChangeProvider extends ChangeNotifier {
  bool _darkTheme = true;
  bool get darkTheme => _darkTheme;
  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}
