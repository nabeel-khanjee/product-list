import 'package:provider_app/src/app/app_export.dart';

class IsGradientBackGround extends StatelessWidget {
  const IsGradientBackGround({
    super.key,
    required this.body,
    required this.isBackAppBar,
    required this.appbarText,
    this.isAppBar = true,
  });
  final Widget body;
  final bool isBackAppBar;
  final String appbarText;
  final bool isAppBar;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<IsGradientBackgroundCubit>()
          ..updateState(color: getThemeColor(context)),
        child:
            BlocBuilder<IsGradientBackgroundCubit, IsGradientBackgroundState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => Container(),
            updateStateDarkLight: (value) => Container(
              decoration:
                  value ? BoxDecoration(gradient: linerGradientForApp()) : null,
              child: MainScaffold(
                body: body,
                isGradient: true,
                appBar: isAppBar
                    ? AppBarcomponent(
                        isTitleTowLines: false,
                        isBackAppBar: isBackAppBar,
                        isGradient: true,
                        title: appbarText,
                      )
                    : null,
              ),
            ),
            updateColorState: (color) => Container(
              decoration: BoxDecoration(
                  gradient: linerGradientForApp(
                color: color,
              )),
              child: MainScaffold(
                body: body,
                isGradient: true,
                appBar: isAppBar
                    ? AppBarcomponent(
                      
                        isTitleTowLines: false,
                        isBackAppBar: isBackAppBar,
                        isGradient: true,
                        title: appbarText,
                      )
                    : null,
              ),
            ),
          ),
        ));
  }
}
