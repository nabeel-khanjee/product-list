
import 'package:patient_app/src/app/app_export.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
    required this.snap,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final bool snap;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        HomePageAppBar(snap: snap, scaffoldKey: _scaffoldKey),
        HomePageListView(),
      ],
    );
  }
}
