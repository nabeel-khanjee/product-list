import 'package:provider_app/src/app/app_export.dart';

Widget flavorBanner({
  required Widget child,
  bool show = true,
}) =>
    show
        ? Banner(
            child: child,
            location: BannerLocation.topStart,
            message: F.name,
            color: Colors.green.withOpacity(0.6),
            textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
                letterSpacing: 1.0),
            textDirection: TextDirection.ltr,
          )
        : Container(
            child: child,
          );
