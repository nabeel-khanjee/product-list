import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/bft_questionnaire/bft_questionnaire/components/bft_questionnaire_appbar.dart';

class BFTQuestionnaireScreen extends StatelessWidget {
  const BFTQuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(padding: const EdgeInsets.all(12), child: Container()),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.5,
      appBar: const BFTQuestionnaireAppBar(),
    );
  }
}
