import 'package:provider_app/src/app/app_export.dart';

class GAD7Screen extends StatelessWidget {
  const GAD7Screen({super.key});

  @override
  Widget build(BuildContext context) {
     return MainScaffold(
      body: Container(padding: const EdgeInsets.all(12), child: Container()),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.gAD7,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}