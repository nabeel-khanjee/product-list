import 'package:provider_app/src/app/app_export.dart';

class DomesticViolenceCheckListScreen extends StatelessWidget {
  const DomesticViolenceCheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return MainScaffold(
      body: Container(padding: const EdgeInsets.all(12), child: Container()),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.domesticViolenceChecklist,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}