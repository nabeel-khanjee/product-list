import 'package:provider_app/src/app/app_export.dart';

class IsGradientBackGround extends StatelessWidget {
  const IsGradientBackGround({
    super.key,
    required this.body,
    required this.isBackAppBar, required this.appbarText,
  });
  final Widget body;
  final bool isBackAppBar;
  final String  appbarText;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<IsGradientBackgroundCubit>()
          ..updateState(color: getThemeColor(context)),
        child:
            BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => Container(),
            updateColorState: (color) => Container(
              decoration: BoxDecoration(
                  gradient: linerGradientForApp(
                color: color,
              )),
              child: MainScaffold(
                body: body,
                isGradient: true,
                appBar: AppBarcomponent(
                  isBackAppBar: isBackAppBar,
                  isGradient: true,
                  title: appbarText,
                ),
              ),
            ),
          ),
        ));
  }
}

class MainScaffold extends StatelessWidget {
  final bool isGradient;
  final Widget appBar;

  const MainScaffold({
    super.key,
    required this.body,
    required this.isGradient,
    required this.appBar,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getThemeStateIsLight()
          ? isGradient
              ? Colors.transparent
              : Theme.of(context).scaffoldBackgroundColor
          : Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
          child: appBar, preferredSize: Size.fromHeight(kToolbarHeight)),
      body: body,
    );
  }
}

class AppBarcomponent extends StatelessWidget {
  final bool isGradient;
  final bool isBackAppBar;
  final String title;

  const AppBarcomponent({
    super.key,
    required this.isGradient,
    required this.title,
    required this.isBackAppBar,
  });

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
          centerTitle: isBackAppBar,
          actions: !isBackAppBar
              ? [
                  Padding(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, right: 3),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  )
                ]
              : null,
          backgroundColor: getThemeStateIsLight()
              ? isGradient
                  ? Colors.transparent
                  : Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).scaffoldBackgroundColor,
          leading: isBackAppBar
              ? GestureDetector(
                  onTap: () => NavigationUtil.pop(context),
                  child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstants.white),
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorConstants.black,
                      )),
                )
              : DrawerLeadingComponent(),
          title: Text(
            title,
          )),
    );
  }
}
