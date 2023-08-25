import 'package:provider_app/src/app/app_export.dart';

class AppTileComponent extends StatelessWidget {
  final String test;
  final String image;
  final VoidCallback onTap;

  const AppTileComponent({
    super.key,
    required this.test,
    required this.image, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        // height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: getThemeStateIsLight()
              ? lighten(getThemeColor(context), 0.1)
              : darken(getThemeColor(context), 0.5),
        ),
        child: Row(
          children: [
            TilesIconComponent(image: image),
            SizedBox(
              width: 10,
            ),
            Text(test),
          ],
        ),
      ),
    );
  }
}
