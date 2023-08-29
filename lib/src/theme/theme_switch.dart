import 'package:provider_app/src/app/app_export.dart';

class ThemeSwitchApp extends StatelessWidget {
  const ThemeSwitchApp({
    super.key,
    required this.image,
    required this.text,
    required this.onChnage, required this.value,
  });

  final String image;
  final String text;
  final Function(bool value) onChnage;
  final bool value;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SwitchListTile.adaptive(
        contentPadding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        tileColor: getThemeStateIsLight()
            ? lighten(getThemeColor(context), 0.1)
            : darken(getThemeColor(context), 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TilesIconComponent(image: image),
            SizedBox(
              width: 10,
            ),
            Text(text),
          ],
        )),
        value: value,
        onChanged: (value) => onChnage(value),
      ),
    );
  }
}

class TilesIconComponent extends StatelessWidget {
  const TilesIconComponent({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lighten(getThemeColor(context), 0.5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            height: 30,
            fit: BoxFit.fill,
            color: darken(
              getThemeColor(context),
              0.3,
            ),
          ),
        ));
  }
}
