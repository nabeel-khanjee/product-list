import 'package:provider_app/src/app/app_export.dart';

getCurrentLanguageDirection() =>
    (navigationService!.navigatorKey.currentContext!.locale.toString() ==
            'hi_IN' ||
        navigationService!.navigatorKey.currentContext!.locale.toString() ==
            'ur_PK');
