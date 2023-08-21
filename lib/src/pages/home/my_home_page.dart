import 'package:provider_app/src/app/app_export.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenArgs args;
  const HomeScreen({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    bool snap = false;

    return flavorBanner(
      show: true,
      child: HomeScreenComponent(
        snap: snap,
        theme: args.theme,
      ),
    );
  }
}
