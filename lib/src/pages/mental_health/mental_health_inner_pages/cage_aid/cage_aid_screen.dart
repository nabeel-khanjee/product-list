import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/components/result_identified_row_component.dart';

class CageAidAppBarOptions {
  bool isSelected;
  String name;

  CageAidAppBarOptions(this.isSelected, this.name);
}

class CageAidScreen extends StatelessWidget {
  const CageAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CheckBoxListTileComponent(),
            DividerComponent(),
            ListOfMainQuestions(),
            DividerComponent(),
            ResultIdentifiedRow(),
            DividerComponent(),
            AfterResultQuestionComponent()
          ],
        ),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.cageAid,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}



