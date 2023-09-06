import 'package:provider_app/src/app/app_export.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.housingAndUtilitiesRoute:
      return materialRoute(const HousingAndUtilitiesScreen());
    case RouteConstants.foodRoute:
      return materialRoute(const FoodScreen());
    case RouteConstants.transportationAndChildCareRoute:
      return materialRoute(const TransportationAndChildCareScreen());
    case RouteConstants.educationAndEmploymentAndFinanceRoute:
      return materialRoute(const EducationAndEmploymentAndFinanceScreen());
    case RouteConstants.personalSafetyRoute:
      return materialRoute(const PersonalSafetyScreen());
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
      return materialRoute(const SocialHealthScreen());
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
