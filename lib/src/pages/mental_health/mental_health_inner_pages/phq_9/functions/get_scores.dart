 import 'package:provider_app/src/app/app_export.dart';

int getScores({
    required MapEntry<int, Question> quesion,
  }) {
    int getScore = 0;

    for (var indexOfQuestions = 0;
        indexOfQuestions < questions.length;
        indexOfQuestions++) {
      for (var indexOfOptions = 0;
          indexOfOptions < questions[indexOfQuestions].options.length;
          indexOfOptions++) {
        if (questions[indexOfQuestions].options[indexOfOptions].isSelected ==
            true) {
          getScore += indexOfOptions;
        }
      }
    }
    return getScore;
  }
