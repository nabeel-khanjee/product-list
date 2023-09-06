import 'package:provider_app/src/app/app_export.dart';

class EducationAndEmploymentAndFinanceScreen extends StatelessWidget {
  const EducationAndEmploymentAndFinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return MainScaffold(body: Container(), isGradient:false,
    appBar: AppBarcomponent(isGradient: false, title: StringConstants.educationAndEmploymentAndFinance, isBackAppBar: true, isTitleTowLines: false),
    );
    }
}