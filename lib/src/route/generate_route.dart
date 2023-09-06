import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/change_location/change_location.dart';
import 'package:provider_app/src/pages/change_language/chnage_language_screen.dart';
import 'package:provider_app/src/pages/demographic/demographic_screen.dart';
import 'package:provider_app/src/pages/mental_health/mentail_health_screen.dart';
import 'package:provider_app/src/pages/physical_health/physical_health_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.homeRoute:
      return materialRoute(const HomeScreen());
    case RouteConstants.demographicRoute:
      return materialRoute(const DemographicScreen());
    case RouteConstants.changeLanguageRoute:
      return materialRoute(const ChangeLanguageScreen());
    case RouteConstants.changeLocationRoute:
      return materialRoute(const ChangeLocationScreen());
    case RouteConstants.settingRoute:
      return materialRoute(const SettingsScreen());
    case RouteConstants.splashRoute:
      return materialRoute(const SplashScreen());
    case RouteConstants.physicalHealthRoute:
      return materialRoute(const PhysicalHealthScreen());
    case RouteConstants.mentalHealthRoute:
      return materialRoute((const MentailHealthScreen()));
    case RouteConstants.socialHealthRoute:
      return materialRoute(const PhysicalHealthScreen());
    case RouteConstants.signInRoute:
      return materialRoute(const SignInScreen());
    case RouteConstants.signUpRoute:
      return materialRoute(const SignUpScreen());
    case RouteConstants.onboardingRoute:
      return materialRoute(const OnboardingScreen());
    default:
      return materialRoute(
        const SplashScreen(),
      );
  }
}
