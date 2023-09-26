import 'package:provider_app/src/app/app_export.dart';

class AppBarcomponent extends StatelessWidget {
  final bool isGradient;
  final bool isBackAppBar;
  final String title;
  final bool isTitleTowLines;
  final Widget? actionTextButton;
  final Color? appBarColor;
  final double elevation;
  final List<BoxShadow>? appBarShadoow;

  const AppBarcomponent(
      {super.key,
      required this.isGradient,
      required this.title,
      required this.isBackAppBar,
      required this.isTitleTowLines,
      this.actionTextButton,
      this.appBarColor,
      this.elevation = 0,
      this.appBarShadoow});

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(boxShadow: appBarShadoow),
        child: AppBar(
            elevation: elevation,
            centerTitle: isBackAppBar,
            actions: !isBackAppBar
                ? [
                    InkWell(
                      onTap: () => NavigationUtil.push(
                          context, RouteConstants.notificationRoute),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Stack(alignment: Alignment.topRight, children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0, right: 3),
                            child: Image.asset(
                              AssetsConstants.notificationAppBarIcon,
                            ),
                          ),
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 1, color: getThemeColor(context)),
                                color: ColorConstants.green),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0, right: 3),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu)),
                    )
                  ]
                : actionTextButton != null
                    ? [actionTextButton!]
                    : [
                        Container(
                          width: 50,
                        )
                      ],
            backgroundColor: getThemeStateIsLight()
                ? isGradient
                    ? Colors.transparent
                    : appBarColor ?? Theme.of(context).scaffoldBackgroundColor
                : appBarColor ?? Theme.of(context).scaffoldBackgroundColor,
            leading: isBackAppBar
                ? GestureDetector(
                    onTap: () => NavigationUtil.pop(context),
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: ColorConstants.white),
                        child: const Icon(
                          Icons.arrow_back,
                          color: ColorConstants.black,
                        )),
                  )
                : const DrawerLeadingComponent(),
            title: !isTitleTowLines
                ? SizedBox(
                    // width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  )
                : const HomeTitleComponent()),
      ),
    );
  }
}
