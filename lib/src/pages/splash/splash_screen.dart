import 'package:patient_app/src/app/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateAfterDelay();
    super.initState();
  }

  void _navigateAfterDelay() {
    Timer(Duration(seconds: !kDebugMode ? 1 : 2), () async {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      // backgroundColor: ColorConstants.lightSkyBlue,
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
