import 'package:provider_app/src/app/app_export.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.mentalHealthRoute:
      return materialRoute(const MentalHealthScreen());
    case RouteConstants.socialHealthRoute:
      return materialRoute(const SocialHealthScreen());
    case RouteConstants.physicalHealthRoute:
      return materialRoute(const PhysicalHealthScreen());
    case RouteConstants.socailHealthInnerPageRoute:
      final args = settings.arguments as MapEntry<int, SocialHealthListData>;
      return materialRoute(SocailHealthInnerPage(
        element: args,
      ));

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

    case RouteConstants.signInRoute:
      return materialRoute(const SignInScreen());

    case RouteConstants.signUpRoute:
      return materialRoute(const SignUpScreen());

    case RouteConstants.otpRoute:
      return materialRoute(const OTPScreen());

    case RouteConstants.newPasswordRoute:
      return materialRoute(const NewPasswordScreen());

    case RouteConstants.forgotPasswordRoute:
      return materialRoute(const ForgotPasswordScreen());

    case RouteConstants.onboardingRoute:
      return materialRoute(const OnboardingScreen());

    default:
      return materialRoute(const SplashScreen());
  }
}
