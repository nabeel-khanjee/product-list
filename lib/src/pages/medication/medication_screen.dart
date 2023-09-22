import 'package:provider_app/src/app/app_export.dart';

class MedicationsScreen extends StatelessWidget {
  const MedicationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.medications,
      isBackAppBar: false,
      body: MainScaffold(
        body: Container(),
        isGradient: true,
      ),
    );
  }
}
