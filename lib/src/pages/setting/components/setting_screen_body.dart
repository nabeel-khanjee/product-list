import 'package:provider_app/src/app/app_export.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextComponentSettingMainHeading(
                text: StringConstants.generalSettings),
            AppTileComponent(
              onTap: () => NavigationUtil.push(
                  context, RouteConstants.changeLanguageRoute),
              image: AssetsConstants.chnageLanguageIcon,
              test: StringConstants.changeLanguage,
            ),
            AppTileComponent(
              onTap: () {},
              image: AssetsConstants.changeLocationIcon,
              test: StringConstants.changeLocation,
            ),
            TextComponentSettingMainHeading(
                text: StringConstants.otherSettings),
            ThemeSwitchApp(
                image: AssetsConstants.notificationIcon,
                onChnage: (value) async {
                  await switchThemeApp();
                  await BlocProvider.of<IsGradientBackgroundCubit>(context)
                      .updateState(color: getThemeColor(context));
                },
                text: StringConstants.notification),
            ThemeSwitchApp(
                image: AssetsConstants.newsLetterIcon,
                onChnage: (value) async {
                  await switchThemeApp();
                  await BlocProvider.of<IsGradientBackgroundCubit>(context)
                      .updateState(color: getThemeColor(context));
                },
                text: StringConstants.newsletters),
            ThemeSwitchApp(
                image: AssetsConstants.offersAndPromotionIcon,
                onChnage: (value) async {
                  await switchThemeApp();
                  await BlocProvider.of<IsGradientBackgroundCubit>(context)
                      .updateState(color: getThemeColor(context));
                },
                text: StringConstants.offersAndPromotions),
            ThemeSwitchApp(
                image: AssetsConstants.lightDarkIcon,
                onChnage: (value) async {
                  await switchThemeApp();
                  await BlocProvider.of<IsGradientBackgroundCubit>(context)
                      .updateState(color: getThemeColor(context));
                },
                text: StringConstants.themeDarkLight),
            AppColorPicker(),
            SelectLanguagesComponent(),
          ],
        ),
      ),
    );
  }
}
