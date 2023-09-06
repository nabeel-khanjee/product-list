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
        gradient: linerGradientForApp(
          color: getThemeColor(context),
        ),
      ),
      child: const AdvancedDrawerChildComponent(),
    );
  }
}
