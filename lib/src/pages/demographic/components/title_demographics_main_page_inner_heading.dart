import 'package:provider_app/src/app/app_export.dart';

class TitleDemographicsMainHeadingInnerPage extends StatelessWidget {
  const TitleDemographicsMainHeadingInnerPage({
    super.key,
    required this.titleDemographicInnerScreen,
  });

  final String titleDemographicInnerScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          titleDemographicInnerScreen,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: getThemeColor(context),
          fontFamily: FontConstantc.gilroySemiBold),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
