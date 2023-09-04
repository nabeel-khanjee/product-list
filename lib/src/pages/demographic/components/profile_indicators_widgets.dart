import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/demographic/components/indicator_widgets.dart';

class ProfileIndicatorsWidget extends StatelessWidget {
  const ProfileIndicatorsWidget({
    super.key,
    required this.currentPage,
    required this.onFirstIndicatorPresses,
    required this.onSecondIndicatorPresses,
    required this.onThirdIndicatorPresses,
  });

  final int currentPage;
  final VoidCallback onFirstIndicatorPresses;
  final VoidCallback onSecondIndicatorPresses;
  final VoidCallback onThirdIndicatorPresses;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 58,
      margin: const EdgeInsets.symmetric(vertical: 10.0),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lighten(getThemeColor(context), 0.35)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IndicatorWidget(
              onTap: onFirstIndicatorPresses,
              isSelected: currentPage == 0,
              title: StringConstants.personal,
            ),
            IndicatorWidget(
              onTap: onSecondIndicatorPresses,
              isSelected: currentPage == 1,
              title: StringConstants.contact,
            ),
            IndicatorWidget(
              onTap: onThirdIndicatorPresses,
              isSelected: currentPage == 2,
              title: StringConstants.insurance,
            ),
          ],
        ),
      ),
    );
  }
}
