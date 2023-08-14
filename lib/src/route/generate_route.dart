import 'package:patient_app/src/app/app_export.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.healthCheckHomeRoute:
      return materialRoute(
        HomeScreen(),
      );
    case RouteConstants.splashRoute:
      return materialRoute(
        const SplashScreen(),
      );
    default:
      return materialRoute(
        const SplashScreen(),
      );
  }
}
