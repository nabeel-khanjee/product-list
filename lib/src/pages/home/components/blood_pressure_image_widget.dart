import 'dart:ui';
import 'package:provider_app/src/app/app_export.dart';

class BloodPressureImageWidget extends StatelessWidget {
  const BloodPressureImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
