import 'package:provider_app/src/app/app_export.dart';

class CageAidScreen extends StatelessWidget {
  const CageAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(padding: const EdgeInsets.all(12), child: Container()),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.cageAid,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
