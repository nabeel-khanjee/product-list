import 'package:provider_app/src/app/app_export.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Container(),
        isGradient: false,
        appBar: AppBarcomponent(
            isGradient: false,
            title: StringConstants.home,
            isBackAppBar: false));
  }
}
