import 'package:provider_app/src/app/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    bool snap = false;

    return flavorBanner(
      show: true,
      child: HomeScreenComponent(
        snap: snap,
      ),
    );
  }
}
