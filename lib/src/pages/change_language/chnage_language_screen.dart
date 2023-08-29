import 'package:provider_app/src/app/app_export.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      isBackAppBar: true,
      appbarText: StringConstants.changeLanguage,
      body: SelectRadioListComponent(isLanguage: true,),
    );
  }
}
