import 'package:patient_app/src/app/app_export.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.theme,
  });

  final MyTheme theme;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: [
          ThemeSwitch(theme: theme),
          AppColorPicker(theme: theme),
        ],
      ),
    );
  }
}
