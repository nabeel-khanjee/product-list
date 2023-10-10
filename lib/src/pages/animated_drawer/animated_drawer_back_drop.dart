import 'package:provider_app/src/app/app_export.dart';

class AnimatedDrawerBackDrop extends StatelessWidget {
  const AnimatedDrawerBackDrop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          tileMode: TileMode.mirror,
          end: Alignment.topCenter,
          colors: [
            darken(
                getThemeColor(navigationService!.navigatorKey.currentContext!),
                0.3),
            getThemeColor(navigationService!.navigatorKey.currentContext!),
          ],
        ),
      ),
      child: const AdvancedDrawerChildComponent(),
    );
  }
}
