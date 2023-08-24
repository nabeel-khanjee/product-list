import 'package:provider_app/src/app/app_export.dart';

ThemeData darkThemeData(MyTheme theme) {
  return ThemeData(
    drawerTheme:
        DrawerThemeData(backgroundColor: Colors.transparent, elevation: 0),
    useMaterial3: true,
    colorSchemeSeed: theme.getColor(),
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(60)),
        maximumSize: MaterialStatePropertyAll(Size.fromHeight(60)),
        minimumSize: MaterialStatePropertyAll(Size.fromHeight(60)),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: theme.getColor(),
      textTheme: ButtonTextTheme.accent,
      height: 70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
    ),
    textTheme: TextTheme(
      titleSmall:
          FontStylesConstants.nonito(fontSize: 8, color: ColorConstants.white),
      titleMedium:
          FontStylesConstants.nonito(fontSize: 10, color: ColorConstants.white),
      bodySmall:
          FontStylesConstants.nonito(fontSize: 14, color: ColorConstants.white),
      bodyMedium:
          FontStylesConstants.nonito(fontSize: 16, color: ColorConstants.white),
      bodyLarge:
          FontStylesConstants.nonito(fontSize: 18, color: ColorConstants.white),
      labelSmall:
          FontStylesConstants.nonito(fontSize: 20, color: ColorConstants.white),
      titleLarge:
          FontStylesConstants.nonito(fontSize: 20, color: ColorConstants.white),
      labelMedium:
          FontStylesConstants.nonito(fontSize: 22, color: ColorConstants.white),
      labelLarge:
          FontStylesConstants.nonito(fontSize: 24, color: ColorConstants.white),
      headlineSmall:
          FontStylesConstants.nonito(fontSize: 26, color: ColorConstants.white),
      headlineMedium:
          FontStylesConstants.nonito(fontSize: 28, color: ColorConstants.white),
      headlineLarge:
          FontStylesConstants.nonito(fontSize: 30, color: ColorConstants.white),
      displaySmall:
          FontStylesConstants.nonito(fontSize: 32, color: ColorConstants.white),
      displayMedium:
          FontStylesConstants.nonito(fontSize: 34, color: ColorConstants.white),
      displayLarge:
          FontStylesConstants.nonito(fontSize: 36, color: ColorConstants.white),
    ),
  );
}
