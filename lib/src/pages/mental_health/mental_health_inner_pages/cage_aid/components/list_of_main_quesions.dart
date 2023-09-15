import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/data_list/main_questions_list.dart';

class ListOfMainQuestions extends StatelessWidget {
  const ListOfMainQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quesions
          .asMap()
          .entries
          .map((question) =>
              SocialHealthRadioListQuesion(questions: question))
          .toList(),
    );
  }
}
