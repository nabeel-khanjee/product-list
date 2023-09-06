import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/physical_health/inner_pages/health_tracker/components/blood_pressure_and_bmi_widget.dart';

class HealthTrackerScreem extends StatefulWidget {
  const HealthTrackerScreem({super.key});

  @override
  State<HealthTrackerScreem> createState() => _HealthTrackerScreemState();
}

class _HealthTrackerScreemState extends State<HealthTrackerScreem> {
  bool isDiabeticSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TrackingOverViewWidget(),
          TitleDemographicsMainHeadingInnerPage(
              titleDemographicInnerScreen: StringConstants.mentalHealth),
          const MentalhealthTrackingWidget(),
          TitleDemographicsMainHeadingInnerPage(
              titleDemographicInnerScreen: StringConstants.circumference),
          const CircumferenceWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen: StringConstants.diabetic),
              Checkbox(
                side:
                    const BorderSide(color: ColorConstants.greyText, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: isDiabeticSelected,
                onChanged: (value) {
                  setState(() {
                    isDiabeticSelected = value!;
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: HealthTrackerReadingWidget(
                  fontSize: 14,
                  iconColor: ColorConstants.white,
                  subReadingColor: ColorConstants.greyText,
                  headingColor: ColorConstants.white,
                  subReading: StringConstants.mgPerDl,
                  reading: '34',
                  forgroundColor:
                      lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
                  readingIcon: AssetsConstants.diabeticIcon,
                  borderColor: getThemeColor(context),
                  heading: StringConstants.sugarFasting,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: HealthTrackerReadingWidget(
                  fontSize: 14,
                  iconColor: ColorConstants.white,
                  subReadingColor: ColorConstants.greyText,
                  headingColor: ColorConstants.white,
                  subReading: StringConstants.mgPerDl,
                  reading: '34',
                  forgroundColor:
                      lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
                  readingIcon: AssetsConstants.diabeticIcon,
                  borderColor: getThemeColor(context),
                  heading: StringConstants.sugarRandom,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TrackingOverViewWidget extends StatelessWidget {
  const TrackingOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [BloodPressureAndBmiWidget(), TempPulseRespiratoryRateWidget()],
    );
  }
}

class MentalhealthTrackingWidget extends StatelessWidget {
  const MentalhealthTrackingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.greyText,
            subReadingColor: ColorConstants.green,
            headingColor: ColorConstants.greyText,
            subReading: StringConstants.mild,
            reading: '27%',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.anxietyIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.anxiety,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: lighten(getThemeColor(context), 0.08),
            subReadingColor: ColorConstants.yellowGolden,
            headingColor: lighten(getThemeColor(context), 0.08),
            subReading: StringConstants.moderate,
            reading: '35%',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.anxietyIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.depression,
          ),
        ),
      ],
    );
  }
}

class CircumferenceWidget extends StatelessWidget {
  const CircumferenceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.purpleScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.purpleScanHome,
            subReading: StringConstants.inches,
            reading: '34',
            forgroundColor:
                lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
            readingIcon: AssetsConstants.waistIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.waist,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 14,
            iconColor: ColorConstants.yellowGolden,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.yellowGolden,
            subReading: StringConstants.inches,
            reading: '16',
            forgroundColor:
                lighten(Theme.of(context).scaffoldBackgroundColor, 0.05),
            readingIcon: AssetsConstants.headIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.waist,
          ),
        ),
      ],
    );
  }
}

class TempPulseRespiratoryRateWidget extends StatelessWidget {
  const TempPulseRespiratoryRateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.oF,
            reading: '98',
            forgroundColor: Theme.of(context).scaffoldBackgroundColor,
            readingIcon: AssetsConstants.tempIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.temp,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.perMin,
            reading: '88',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.pulseIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.pulseRate,
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: HealthTrackerReadingWidget(
            fontSize: 12,
            iconColor: ColorConstants.pinkScanHome,
            subReadingColor: ColorConstants.greyText,
            headingColor: ColorConstants.white,
            subReading: StringConstants.inches,
            reading: '34',
            forgroundColor: (Theme.of(context).scaffoldBackgroundColor),
            readingIcon: AssetsConstants.waistIcon,
            borderColor: getThemeColor(context),
            heading: StringConstants.respiratory,
          ),
        ),
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
  final Color subReadingColor;
  final Color iconColor;
  final double fontSize;

  const HealthTrackerReadingWidget({
    super.key,
    required this.forgroundColor,
    required this.borderColor,
    required this.readingIcon,
    required this.heading,
    required this.reading,
    required this.subReading,
    required this.headingColor,
    required this.subReadingColor,
    required this.iconColor,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
                color: iconColor,
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
                    fontSize: fontSize,
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
                          .copyWith(color: subReadingColor),
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
