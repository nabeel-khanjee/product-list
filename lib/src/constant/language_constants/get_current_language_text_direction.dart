import 'package:provider_app/src/app/app_export.dart';

bool getCurrentLanguageDirection() {
  if (navigationService!.navigatorKey.currentContext!.locale.toString() ==
      'ur_PK') {
    return true;
  } else if (navigationService!.navigatorKey.currentContext!.locale
          .toString() ==
      'ar_AE') {
    return true;
  } else {
    return false;
  }
}
