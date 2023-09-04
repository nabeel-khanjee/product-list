import 'package:provider_app/src/app/app_export.dart';
class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
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
          onPressed: () => drawerStateChnageUpdateIndex(
            advancedDrawerController: BlocProvider.of<AnimatedDrawerCubit>(context).advancedDrawerController,
            isOpen: false,
          context: context
          ),
          icon: const Icon(
            Icons.more_vert,
          )),
    );
  }
}
