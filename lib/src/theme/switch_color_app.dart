import 'package:provider_app/src/app/app_export.dart';

switchColorApp({required Color color}) =>
    Provider.of<MyTheme>(navigationService!.navigatorKey.currentContext!,
            listen: false)
        .switchColor(color);
