import 'package:patient_app/src/app/app_export.dart';

class HomeScreen extends StatelessWidget {
  //  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool snap = false;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Consumer<MyTheme>(
      builder: (context, theme, child) => flavorBanner(
        show: true,
        child: HomeScreenComponent(
          scaffoldKey: _scaffoldKey,
          snap: snap,
          theme: theme,
        ),
      ),
    );
  }
}
