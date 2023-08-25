import 'package:provider_app/src/app/app_export.dart';

class ChnageLanguageScreen extends StatelessWidget {
  const ChnageLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      isBackAppBar: true,
      appbarText: StringConstants.changeLanguage,
      body: Column(),
    );
  }
}
