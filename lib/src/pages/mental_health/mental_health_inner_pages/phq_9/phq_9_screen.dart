import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/phq_9/compoents/phq_9_widget.dart';

class PHQ9Screen extends StatelessWidget {
  const PHQ9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Question> questions = [
      Question(
          isSelected: false,
          question: StringConstants.littleInterestOrPleasureInDoingThings,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.troubleFallingOrStayingAsleepOrSleepingTooMuch,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
      Question(
          isSelected: false,
          question: StringConstants.feelingDownDepressedOrHopeless,
          options: [
            Option(option: StringConstants.notAtAll),
            Option(option: StringConstants.severalDays),
            Option(option: StringConstants.moreThanHalfTheDays),
            Option(option: StringConstants.nearlyEveryDay)
          ]),
    ];

    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: questions
              .asMap()
              .entries
              .map((question) => PHQ9Widget(question: question))
              .toList(),
        ),
      ),
      isGradient: false,
      preferredSizeAppBar: kToolbarHeight * 3.9,
      appBar: const PHQAppbarComponent(),
    );
  }
}

class PHQAppbarComponent extends StatelessWidget {
  const PHQAppbarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight * 3.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarcomponent(
              isGradient: false,
              title: StringConstants.bFTQuestionnaire,
              isBackAppBar: true,
              isTitleTowLines: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              StringConstants
                  .theLastTwoWeeksHowOftenHaveYouBeenBotheredByAnyOfTheFollowingProblemsUseToIndicateYourAnswer,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  height: 1.5, fontFamily: FontConstantc.gilroyMedium),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 54,
            width: double.infinity,
            decoration: BoxDecoration(
                color: getThemeColor(context),
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstants.totalScore,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontFamily: FontConstantc.gilroyMedium),
                  ),
                  Text(
                    '03',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontFamily: FontConstantc.gilroyMedium),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
