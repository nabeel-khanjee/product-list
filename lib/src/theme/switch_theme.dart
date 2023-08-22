import 'package:provider_app/src/app/app_export.dart';

switchThemeApp() =>
    Provider.of<MyTheme>(navigationService!.navigatorKey.currentContext!,
            listen: false)
        .switchTheme();
