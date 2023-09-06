import 'package:provider_app/src/app/app_export.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.food,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
