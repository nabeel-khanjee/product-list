import 'package:provider_app/src/app/app_export.dart';

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

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1.5,
          )),
        ],
      ),
    );
  }
}
