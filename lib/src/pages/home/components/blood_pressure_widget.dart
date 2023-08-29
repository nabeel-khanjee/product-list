
import 'dart:ui';

import 'package:provider_app/src/app/app_export.dart';

class BloodPressureWidget extends StatelessWidget {
  const BloodPressureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: getThemeColor(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AssetsConstants.bloodPressureIcon,
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                StringConstants.bloodPressure,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstants.green,
                    fontWeight: FontWeight.w600,
                    height: 0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Opacity(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                          AssetsConstants.bloodPressureCardInnerImage,
                          color: Colors.black),
                    ),
                    opacity: 1),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 2.0),
                    child: Image.asset(
                        AssetsConstants.bloodPressureCardInnerImage),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight,
                          colors: [
                        getThemeColor(context).withOpacity(0.1),
                        getThemeColor(context).withOpacity(0.2),
                        getThemeColor(context).withOpacity(0.3),
                        getThemeColor(context).withOpacity(0.4),
                        getThemeColor(context).withOpacity(0.6),
                        getThemeColor(context).withOpacity(0.7),
                        getThemeColor(context).withOpacity(0.8),
                        getThemeColor(context).withOpacity(0.9),
                        getThemeColor(context),
                      ])),
                ),
              ],
            ),
          ),
          Text(
            StringConstants.normal,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.yellowGolden,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '119/78',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6, left: 5),
                child: Text(
                  StringConstants.mmHg,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
