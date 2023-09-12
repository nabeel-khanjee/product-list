import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/phq_9/compoents/divider_component.dart';

import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/phq_9/compoents/score_selection_widget.dart';

class PHQ9Widget extends StatelessWidget {
  const PHQ9Widget({
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
        ScoreSelectionWidget(question: question),
        const DividerComponent(),
      ],
    );
  }
}

