import 'package:provider_app/src/app/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  MyTheme? theme;

  @override
  void initState() {
    _navigateAfterDelay();
    super.initState();
  }

  void _navigateAfterDelay() {
    Timer(Duration(seconds: 0), () async {
      await NavigationUtil.push(
        context,
        RouteConstants.onboardingRoute,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyTheme>(
      builder: (context, theme, child) {
        this.theme = theme;
        return Scaffold(
          backgroundColor: darken(getThemeColor(context), 0.4),
          body: Center(
            child: FlutterLogo(
              size: 100,
            ),
          ),
        );
      },
    );
  }
}
