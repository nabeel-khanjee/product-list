import 'package:provider_app/src/app/app_export.dart';

bool getCurrentLanguageDirection() =>
    (navigationService!.navigatorKey.currentContext!.locale.toString() ==
            'hi_IN' ||
        navigationService!.navigatorKey.currentContext!.locale.toString() ==
            'ur_PK' ||
        navigationService!.navigatorKey.currentContext!.locale.toString() ==
            'ar_AE');
