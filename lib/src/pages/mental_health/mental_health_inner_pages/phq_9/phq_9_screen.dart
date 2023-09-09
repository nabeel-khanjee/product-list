import 'package:provider_app/src/app/app_export.dart';

class PHQ9Screen extends StatelessWidget {
  const PHQ9Screen({super.key});

  @override
  Widget build(BuildContext context) {
     return MainScaffold(
      body: Container(padding: const EdgeInsets.all(12), child: Container()),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.pHQ9,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}