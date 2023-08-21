import 'package:provider_app/src/app/app_export.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.HomeRoute:
      final args = settings.arguments as HomeScreenArgs;
      return materialRoute(
        HomeScreen(args: args),
      );
    case RouteConstants.settingRoute:
      final args = settings.arguments as SettingScreenArgs;

      return materialRoute(
        SettingsScreen(args: args),
      );

    case RouteConstants.splashRoute:
      return materialRoute(
        SplashScreen(),
      );
    case RouteConstants.onboardingRoute:
      final args = settings.arguments as OnboardingScreenArgs;

      return materialRoute(
        OnboardingScreen(args: args),
      );
    default:
      return materialRoute(
        SplashScreen(),
      );
  }
}
