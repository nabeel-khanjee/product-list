import 'package:provider_app/src/app/app_export.dart';

class AppTileComponent extends StatelessWidget {
  final String test;
  final String image;
  final VoidCallback onTap;
  final bool isExpandable;

  const AppTileComponent({
    super.key,
    required this.test,
    required this.image,
    required this.onTap,
    required this.isExpandable,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: !isExpandable
            ? const EdgeInsets.symmetric(vertical: 10)
            : EdgeInsets.zero,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        // height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: getThemeStateIsLight()
              ? darken(lighten(getThemeColor(context), 0.2), 0.1)
              : darken(getThemeColor(context), 0.5),
        ),
        child: Row(
          children: [
            TilesIconComponent(image: image),
            const SizedBox(
              width: 10,
            ),
            Text(test),
          ],
        ),
      ),
    );
  }
}
