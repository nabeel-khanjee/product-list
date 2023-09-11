import 'package:provider_app/src/app/app_export.dart';

class ScoreSelectionWidget extends StatefulWidget {
  const ScoreSelectionWidget({
    super.key,
    required this.question,
  });
  final MapEntry<int, Question> question;
  @override
  State<ScoreSelectionWidget> createState() => ScoreSelectionWidgetState();
}

class ScoreSelectionWidgetState extends State<ScoreSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 98,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
            border: Border.all(color: getThemeColor(context), width: 1.5),
            // color:  darken(getThemeColor(context), 0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.question.value.options
                .asMap()
                .entries
                .map((option) => Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: widget.question.value.options.length !=
                                  option.key + 1
                              ? Border(
                                  right: BorderSide(
                                      color: getThemeColor(context),
                                      width: 1.5))
                              : null),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: getThemeColor(context)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Center(
                                    child: Text(
                                      option.value.option,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                              fontFamily:
                                                  FontConstantc.gilroyMedium),
                                    ),
                                  ),
                                )),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  for (var element
                                      in widget.question.value.options) {
                                    if (element.option == option.value.option) {
                                      element.isSelected = true;
                                    } else {
                                      element.isSelected = false;
                                    }
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: option.key == 0
                                          ? Radius.circular(10)
                                          : Radius.circular(0),
                                      bottomRight: option.key ==
                                              widget.question.value.options
                                                      .length -
                                                  1
                                          ? Radius.circular(10)
                                          : Radius.circular(0),
                                    ),
                                    color: option.value.isSelected == true
                                        ? darken(getThemeColor(context), 0.2)
                                        : darken(getThemeColor(context), 0.3)),
                                child: Center(
                                    child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Text(option.key.toString()))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )))
                .toList()));
  }

  Color? getCheckColor({bool? isSelected}) =>
      isSelected == true ? const Color.fromARGB(255, 0, 255, 76) : null;
  Color? getCrossColor({bool? isSelected}) =>
      isSelected == false ? const Color.fromARGB(255, 255, 47, 47) : null;
}
