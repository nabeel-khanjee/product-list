import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/social_health/social_health_inner_pages/components/radio_list_widget.dart';

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
                        QuestionFormHeading(questions: questions),
                        RadioList(questions: questions)
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
