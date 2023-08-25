import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/chnage_language/chnage_language_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.homeRoute:
      return materialRoute(
        HomeScreen(),
      );
      case RouteConstants.changeLanguageRoute:
      return materialRoute(
        ChnageLanguageScreen(),
      );
      
    case RouteConstants.settingRoute:
      return materialRoute(
        SettingsScreen(),
      );
    case RouteConstants.splashRoute:
      return materialRoute(
        SplashScreen(),
      );
    case RouteConstants.onboardingRoute:
      return materialRoute(
        OnboardingScreen(),
      );
    default:
      return materialRoute(
        SplashScreen(),
      );
  }
}
