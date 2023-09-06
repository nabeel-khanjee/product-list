import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/change_location/change_location.dart';
import 'package:provider_app/src/pages/change_language/chnage_language_screen.dart';
import 'package:provider_app/src/pages/demographic/demographic_screen.dart';
import 'package:provider_app/src/pages/forgot_password/forgot_password_screen.dart';
import 'package:provider_app/src/pages/new_password/new_password_screen.dart';
import 'package:provider_app/src/pages/otp/otp_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.homeRoute:
      return materialRoute(HomeScreen());

    case RouteConstants.demographicRoute:
      return materialRoute(DemographicScreen());

    case RouteConstants.changeLanguageRoute:
      return materialRoute(ChangeLanguageScreen());

    case RouteConstants.changeLocationRoute:
      return materialRoute(ChangeLocationScreen());

    case RouteConstants.settingRoute:
      return materialRoute(SettingsScreen());

    case RouteConstants.splashRoute:
      return materialRoute(SplashScreen());

    case RouteConstants.signInRoute:
      return materialRoute(SignInScreen());

    case RouteConstants.signUpRoute:
      return materialRoute(SignUpScreen());

    case RouteConstants.otpRoute:
      return materialRoute(OTPScreen());

    case RouteConstants.newPasswordRoute:
      return materialRoute(NewPasswordScreen());

    case RouteConstants.forgotPasswordRoute:
      return materialRoute(ForgotPasswordScreen());

    case RouteConstants.onboardingRoute:
      return materialRoute(OnboardingScreen());

    default:
      return materialRoute(SplashScreen());
      // return materialRoute(ForgotPasswordScreen());
  }
}
