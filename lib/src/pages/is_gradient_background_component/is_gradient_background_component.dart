import 'package:provider_app/src/app/app_export.dart';

class IsGradientBackGround extends StatelessWidget {
  const IsGradientBackGround({
    super.key,
    required this.body,
  });

  final Widget body;

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
              child: Scaffold(
                backgroundColor: getThemeStateIsLight()
                    ? Colors.transparent
                    : Theme.of(context).scaffoldBackgroundColor,
                appBar: AppBar(
                    actions: [],
                    backgroundColor: getThemeStateIsLight()
                        ? Colors.transparent
                        : Theme.of(context).scaffoldBackgroundColor,
                    leading: DrawerLeadingComponent(),
                    title: Text(
                      StringConstants.settings,
                    )),
                body: body,
              ),
            ),
          ),
        ));
  }
}
