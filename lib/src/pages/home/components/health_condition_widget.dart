import 'package:provider_app/src/app/app_export.dart';

class HealthConditionsWidget extends StatelessWidget {
  const HealthConditionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeWidgetHeading(
            bottonPadding: 10,
            topPadding: 22,
            isSeeAll: true,
            title: StringConstants.healthConditions),
        const SizedBox(
          height: 190,
          child: Row(children: [
            BloodPressureWidget(),
            SizedBox(width: 5),
            PulseTempWeightWidget()
          ]),
        )
      ],
    );
  }
}
