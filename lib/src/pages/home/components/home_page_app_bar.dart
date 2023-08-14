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
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi ',
                style: FontStylesConstants.nonito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: MyTheme.isDark
                        ? ColorConstants.white
                        : ColorConstants.black),
              ),
              Text(
                'Nabbel ',
                style: FontStylesConstants.nonito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: MyTheme.isDark
                        ? ColorConstants.white
                        : ColorConstants.black),
              ),
            ],
          ),
          Text(
            F.title,
            style: FontStylesConstants.nonito(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: MyTheme.isDark
                    ? ColorConstants.white
                    : ColorConstants.black),
          ),
        ],
      ),
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
