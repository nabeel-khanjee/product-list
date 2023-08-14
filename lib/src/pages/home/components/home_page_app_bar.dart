import 'package:patient_app/src/app/app_export.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
    required this.snap,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final bool snap;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: snap,
      floating: true,
      expandedHeight: 160.0,
      centerTitle: true,
      title: AppBarTitle(),
      flexibleSpace: Center(
        child: FlexibleSpaceBar(
          expandedTitleScale: 10,
          centerTitle: true,
          background: const FlutterLogo(),
        ),
      ),
      actions: [
        Icon(
          Icons.chat,
        ),
        Icon(
          Icons.notifications,
        ),
      ],
      leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: const Icon(
            Icons.more_vert,
          )),
    );
  }
}

