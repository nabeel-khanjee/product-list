import 'package:provider_app/src/app/app_export.dart';

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
        18,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.selectColor,
          ),
          SizedBox(
            height: 20,
          ),
          MaterialColorPicker(
            onColorChange: (value) {
              theme.switchColor(value);
            },
            onMainColorChange: (ColorSwatch? color) {
              theme.switchColor(color!);
            },
            selectedColor: theme.getColor(),
          )
        ],
      ),
    );
  }
}
