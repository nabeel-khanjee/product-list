import 'package:provider_app/src/app/app_export.dart';

class ExpansionTileComponent extends StatelessWidget {
  final String test;
  final VoidCallback onTap;
  final bool isExpandable;

  const ExpansionTileComponent({
    super.key,
    required this.test,
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
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: getThemeStateIsLight()
              ? lighten(getThemeColor(context), 0.35)
              : darken(getThemeColor(context), 0.5),
        ),
        child: Row(
          children: [
            Text(
              test,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: FontConstantc.gilroyBold,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ],
        ),
      ),
    );
  }
}
