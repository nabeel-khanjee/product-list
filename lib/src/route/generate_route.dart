import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/visit_clinic/visit_clinic_screen.dart';

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

    case RouteConstants.emergencyTypesRoute:
      return materialRoute(const EmergencyTypesScreen());

    case RouteConstants.allEmergenciesRoute:
      return materialRoute(const AllEmergenciesScreen());

    case RouteConstants.appointmentsRoute:
      return materialRoute(const AppointmentsScreen());

    case RouteConstants.communicationRoute:
      return materialRoute(const CommunicationScreen());

    case RouteConstants.meetingDetailsRoute:
      return materialRoute(const MeetingDetailsScreen());

    case RouteConstants.videoCallingRoute:
      return materialRoute(const VideoCallingScreen());

    case RouteConstants.audioCallingRoute:
      return materialRoute(const AudioCallingScreen());

    case RouteConstants.searchDoctorRoute:
      return materialRoute(const SearchDoctorScreen());

    case RouteConstants.visitClinicRoute:
      return materialRoute(const VisitClinicScreen());

    case RouteConstants.onboardingRoute:
      return materialRoute(const OnboardingScreen());

    default:
      // return materialRoute(const SplashScreen());

      return materialRoute(const VisitClinicScreen());
  }
}
