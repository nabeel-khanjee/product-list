import 'package:provider_app/src/app/app_export.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        HomePageAppBar(),
        HomePageListView(),
      ],
    );
  }
}
