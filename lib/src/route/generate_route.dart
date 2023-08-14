
import 'package:patient_app/src/app/app_export.dart';

Route onGenerateRoute(RouteSettings settings) {
  MaterialPageRoute materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.healthCheckHomeRoute:
      // final args = settings.arguments as HomeScreenArgs;
      return materialRoute(
         HomeScreen(
            // args: args,
            ),
      );
    case RouteConstants.splashRoute:
      // final args = settings.arguments as HomeScreenArgs;
      return materialRoute(
        const SplashScreen(
            // args: args,
            ),
      );
    default:
      // final args = settings.arguments as HomeScreenArgs;
      return materialRoute(
        const SplashScreen(
            // args: args,
            ),
      );
  }
}
