import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/components/result_identified_row_component.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/data_list/cage_aid_appbar_options_data_list.dart';

class CheckBoxListData {
  bool isSelected;
  String name;

  CheckBoxListData(this.isSelected, this.name);
}

class CageAidScreen extends StatelessWidget {
  const CageAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckBoxListTileComponent(
                textStyle: Theme.of(context).textTheme.bodySmall!,
                checkBoxListData: cageAidCheckBoxList),
            const DividerComponent(),
            const ListOfMainQuestions(),
            const DividerComponent(),
            const ResultIdentifiedRow(),
            const DividerComponent(),
            const AfterResultQuestionComponent()
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
