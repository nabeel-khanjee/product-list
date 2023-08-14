import 'package:patient_app/src/app/app_export.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
    required this.theme,
  });

  final MyTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      width: double.infinity,
      height: 70,
      child: Row(
        children: [
          Text("Theme Dark Light"),
          Switch.adaptive(
            value: Theme.of(context).brightness == Brightness.light,
            onChanged: (value) async {
              if (Theme.of(context).brightness == Brightness.light) {
                theme.switchTheme();
              } else {
                theme.switchTheme();
              }
            },
          ),
        ],
      ),
    );
  }
}
