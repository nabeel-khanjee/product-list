import 'package:provider_app/src/app/app_export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      body: SettingScreenBody(),
    );
  }
}
