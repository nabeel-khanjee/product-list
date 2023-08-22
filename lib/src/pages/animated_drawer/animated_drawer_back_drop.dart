import 'package:provider_app/src/app/app_export.dart';

class AnimatedDrawerBackDrop extends StatelessWidget {
  const AnimatedDrawerBackDrop({
    super.key,
  }) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: AdvancedDrawerChildComponent(
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          tileMode: TileMode.mirror,
          end: Alignment.topCenter,
          colors: [
            !getThemeStateIsLight()
                ? Theme.of(context).scaffoldBackgroundColor
                : darken(getThemeColor(context), 0.3),
            !getThemeStateIsLight()
                ? Theme.of(context).scaffoldBackgroundColor
                : getThemeColor(context),
          ],
        ),
      ),
    );
  }
}
