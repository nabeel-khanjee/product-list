import 'package:provider_app/src/app/app_export.dart';

linerGradientForApp({ Color? color,}) {
  return LinearGradient(
    begin: Alignment.bottomCenter,
    tileMode: TileMode.mirror,
    end: Alignment.topCenter,
    colors: [
      !getThemeStateIsLight()
          ? Theme.of(navigationService!.navigatorKey.currentContext!)
              .scaffoldBackgroundColor
          : darken(color??getThemeColor(navigationService!.navigatorKey.currentContext!), 0.3),
      !getThemeStateIsLight()
          ? Theme.of(navigationService!.navigatorKey.currentContext!)
              .scaffoldBackgroundColor
          : color??getThemeColor(navigationService!.navigatorKey.currentContext!),
    ],
  );
}
