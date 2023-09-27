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
    Timer(const Duration(seconds: 1), () async {
      await NavigationUtil.popAllAndPush(
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
            child: Image.asset(
              "assets/images/logo.png",
              height: 200,
            ),
          ),
        );
      },
    );
  }
}
