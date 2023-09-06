import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/physical_health/inner_pages/health_tracker/components/blood_pressure_and_bmi_widget.dart';

class HealthTrackerScreem extends StatelessWidget {
  const HealthTrackerScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BloodPressureAndBmiWidget(),
        TitleDemographicsMainHeadingInnerPage(
            titleDemographicInnerScreen: StringConstants.circumference),
        Row(
          children: [
            Expanded(
              child: HealthTrackerReadingWidget(
                headingColor: ColorConstants.purpleScanHome,
                subReading: StringConstants.inches,
                reading: '34',
                forgroundColor: Theme.of(context).scaffoldBackgroundColor,
                readingIcon: AssetsConstants.waistIcon,
                borderColor: getThemeColor(context),
                heading: StringConstants.waist,
              ),
            ),
            Expanded(
              child: HealthTrackerReadingWidget(
                headingColor: ColorConstants.yellowGolden,
                subReading: StringConstants.inches,
                reading: '16',
                forgroundColor:
                    darken(Theme.of(context).scaffoldBackgroundColor, 0.5),
                readingIcon: AssetsConstants.headIcon,
                borderColor: getThemeColor(context),
                heading: StringConstants.waist,
              ),
            ),
          ],
        ),
        TitleDemographicsMainHeadingInnerPage(
            titleDemographicInnerScreen: StringConstants.diabetic),
      ],
    );
  }
}

class HealthTrackerReadingWidget extends StatelessWidget {
  final Color forgroundColor;
  final Color borderColor;
  final String readingIcon;
  final String heading;
  final String reading;
  final String subReading;
  final Color headingColor;

  const HealthTrackerReadingWidget({
    super.key,
    required this.forgroundColor,
    required this.borderColor,
    required this.readingIcon,
    required this.heading,
    required this.reading,
    required this.subReading,
    required this.headingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 3),
      decoration: BoxDecoration(
        color: forgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                readingIcon,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                heading,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: headingColor,
                    fontWeight: FontWeight.w600,
                    height: 0),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    reading,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: ColorConstants.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, left: 5),
                    child: Text(
                      subReading,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: ColorConstants.greyText),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
