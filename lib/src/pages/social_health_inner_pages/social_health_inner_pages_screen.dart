import 'package:provider_app/src/app/app_export.dart';

class SocailHealthInnerPage extends StatefulWidget {
  const SocailHealthInnerPage({super.key, required this.element});

  final MapEntry<int, SocialHealthListData> element;
  @override
  State<SocailHealthInnerPage> createState() => _SocailHealthInnerPageState();
}

class _SocailHealthInnerPageState extends State<SocailHealthInnerPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.element.value.questions
                .asMap()
                .entries
                .map((questions) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                              '${questions.key + 1}. ${questions.value.question}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16,
                                      fontFamily:
                                          FontConstantc.gilroySemiBold)),
                        ),
                        RadioLost(questions: questions)
                      ],
                    ))
                .toList()),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: widget.element.value.title,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}

class RadioLost extends StatefulWidget {
  const RadioLost({
    super.key,
    required this.questions,
  });
  final MapEntry<int, Question> questions;

  @override
  State<RadioLost> createState() => _RadioLostState();
}

class _RadioLostState extends State<RadioLost> {
  Option? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.questions.value.options.asMap().entries.map((options) {
        return RadioListTile<Option>(
          contentPadding: EdgeInsets.zero,
          activeColor: (getThemeColor(context)),
          dense: true,
          fillColor:
              MaterialStatePropertyAll(lighten(getThemeColor(context), 0.05)),
          selectedTileColor: ColorConstants.black,
          title: Text(
            options.value.option,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: lighten(getThemeColor(context), 0.4)),
          ),
          value: options.value,
          groupValue: selectedOption,
          onChanged: (Option? value) {
            setState(() {
              widget.questions.value.isSelected = true;
              selectedOption = value;
            });
          },
        );
      }).toList(),
    );
  }
}
