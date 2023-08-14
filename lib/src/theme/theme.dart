import 'package:patient_app/src/app/app_export.dart';

class MyTheme with ChangeNotifier {
  static bool isDark = false;
  static Color color = Colors.purpleAccent;
  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchColor(Color color) {
    MyTheme.color = color;
    notifyListeners();
  }

  void switchTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  Color getColor() {
    return MyTheme.color;
  }
}
