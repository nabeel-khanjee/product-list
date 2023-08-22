import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/theme/switch_theme.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: Text(StringConstants.themeDarkLight),
      value: Theme.of(context).brightness == Brightness.light,
      onChanged: (value) async {
        if (Theme.of(context).brightness == Brightness.light) {
          switchThemeApp();
        } else {
          switchThemeApp();
        }
      },
    );
  }
}
