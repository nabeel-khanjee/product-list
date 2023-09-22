import 'package:provider_app/src/app/app_export.dart';

class FAQComponentDoctorDetailScreen extends StatelessWidget {
  const FAQComponentDoctorDetailScreen({
    super.key,
    required this.faqList,
  });

  final List<FaqList> faqList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DoctorDetailHeadingOne(
            heading: 'Frequently Asked Questions',
            headingColor: ColorConstants.white,
            fontFamily: FontConstantc.gilroySemiBold),
        const SizedBox(height: 10),
        Column(
          children: faqList
              .asMap()
              .entries
              .map((faq) => ExpansionPanelFaqs(faq: faq))
              .toList(),
        ),
      ],
    );
  }
}
