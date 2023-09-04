import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/home/components/pulse_widget.dart';

import 'package:provider_app/src/pages/home/components/health_condition_third_widget.dart';

class PulseTempWeightWidget extends StatelessWidget {
  const PulseTempWeightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Expanded(child: PulseWidget()),
      SizedBox(
        height: 5,
      ),
      Expanded(
        child: Row(
          children: [
            HealthComditionThirdWidget(
              cardText: StringConstants.temp,
              cardTextColor: ColorConstants.pinkScanHome,
              icon: AssetsConstants.tempIcon,
              number: '98',
              subText: StringConstants.oF,
            ),
            HealthComditionThirdWidget(
              cardText: StringConstants.weight,
              cardTextColor: ColorConstants.purpleScanHome,
              icon: AssetsConstants.weughtIcon,
              number: '74',
              subText: StringConstants.kg,
            ),
          ],
        ),
      )
    ]));
  }
}
