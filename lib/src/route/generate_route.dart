import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/bft_questionnaire/bft_questionnaire/bft_questionnaire_screen.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/cage_aid_screen.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/development_disability/development_disablity_screen.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/domestic_violence_checklist/domestic_violence_checklist.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/gad_7/gad_7_screen.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/phq_9/phq_9_screen.dart';
import 'package:provider_app/src/pages/emergency/emergency_screen.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.domesticViolenceChecklist:
      return materialRoute(const DomesticViolenceCheckListScreen());
    case RouteConstants.cageAid:
      return materialRoute(const CageAidScreen());
    case RouteConstants.bFTQuestionnaire:
      return materialRoute(const BFTQuestionnaireScreen());
    case RouteConstants.gAD7:
      return materialRoute(const GAD7Screen());
    case RouteConstants.developmentDisabilityIDD:
      return materialRoute(const DevlopmentDiabilityScreen());
    case RouteConstants.pHQ9:
      return materialRoute(const PHQ9Screen());
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

    case RouteConstants.emergencyRoute:
      return materialRoute(const EmergencyScreen());

    case RouteConstants.onboardingRoute:
      return materialRoute(const OnboardingScreen());

    default:
      return materialRoute(const SplashScreen());
  }
}
