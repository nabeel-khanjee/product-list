import 'package:provider_app/src/app/app_export.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
    required this.theme,
  });

  final MyTheme theme;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: Text(StringConstants.themeDarkLight),
      value: Theme.of(context).brightness == Brightness.light,
      onChanged: (value) async {
        if (Theme.of(context).brightness == Brightness.light) {
          theme.switchTheme();
        } else {
          theme.switchTheme();
        }
      },
    );
  }
}
