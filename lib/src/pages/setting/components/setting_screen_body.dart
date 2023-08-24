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
            SizedBox(height: 16.0),
            ThemeSwitchApp(
                image: AssetsConstants.lightDarkIcon,
                onChnage: (value) async {
                  await switchThemeApp();
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

class TextComponentSettingMainHeading extends StatelessWidget {
  const TextComponentSettingMainHeading({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    );
  }
}
