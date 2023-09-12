import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/gad_7/components/score_selection_widget_gad_7.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/phq_9/compoents/divider_component.dart';

class GAD7Widget extends StatelessWidget {
  const GAD7Widget({
    super.key,
    required this.question,
  });
  final MapEntry<int, Question> question;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        QuestionFormHeading(questions: question),
        ScoreSelectionGAD7Widget(question: question),
        const DividerComponent(),
      ],
    );
  }
}
