import 'package:provider_app/src/app/app_export.dart';

class DiabeticWidget extends StatelessWidget {
  const DiabeticWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
