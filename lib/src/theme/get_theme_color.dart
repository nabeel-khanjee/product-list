import 'package:provider_app/src/app/app_export.dart';

Color getThemeColor(BuildContext context) =>
    Provider.of<MyTheme>(context).getColor();
