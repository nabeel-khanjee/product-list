import 'package:patient_app/src/app/app_export.dart';

class AppColorPicker extends StatelessWidget {
  const AppColorPicker({
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Select Colors"),
          MaterialColorPicker(
            onColorChange: (value) {
              theme.switchColor(value);
            },
            onMainColorChange: (ColorSwatch? color) {
              theme.switchColor(color!);
            },
            selectedColor: currentTheme.getColor(),
          )
        ],
      ),
    );
  }
}
