import 'package:provider_app/src/app/app_export.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
    required this.snap,
  });

  final bool snap;

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
          onPressed: () => drawerStateChnageUpdateIndex(isOpen: false,
          context: context
          ),
          icon: const Icon(
            Icons.more_vert,
          )),
    );
  }
}
