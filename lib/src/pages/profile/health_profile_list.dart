
  import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/profile/health_profile_list_args.dart';

List<HealthProfileList> healthProfile = [
    HealthProfileList(
        text: StringConstants.physicalHealth,
        route: RouteConstants.physicalHealthRoute),
    HealthProfileList(
        text: StringConstants.socialHealth,
        route: RouteConstants.socialHealthRoute),
    HealthProfileList(
        text: StringConstants.mentalHealth,
        route: RouteConstants.mentalHealthRoute),
  ];