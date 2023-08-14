
import 'package:patient_app/src/app/app_export.dart';

class HomeScreenComponent extends StatelessWidget {
  const HomeScreenComponent({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.snap,
    required this.theme,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final bool snap;
  final MyTheme theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(theme: theme),
      body: HomeScreenBody(snap: snap, scaffoldKey: _scaffoldKey),
      floatingActionButton: HomePageFloatingButton(),
    );
  }
}
