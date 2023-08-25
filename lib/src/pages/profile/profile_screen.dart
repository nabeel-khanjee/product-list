import 'package:provider_app/src/app/app_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        body: Container(),
        isBackAppBar: false,
        appbarText: StringConstants.profile);
  }
}
