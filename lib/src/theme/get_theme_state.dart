import 'package:provider_app/src/app/app_export.dart';

bool getThemeStateIsLight() =>
    Provider.of<MyTheme>(navigationService!.navigatorKey.currentContext!)
        .currentTheme() ==
    ThemeMode.light;
