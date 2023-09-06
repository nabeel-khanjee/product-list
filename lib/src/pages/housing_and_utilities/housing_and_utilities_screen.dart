import 'package:provider_app/src/app/app_export.dart';

class HousingAndUtilitiesScreen extends StatelessWidget {
  const HousingAndUtilitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.housingAndUtilities,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
