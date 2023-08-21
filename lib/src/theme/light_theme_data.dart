  import 'package:provider_app/src/app/app_export.dart';

ThemeData lightThemeData(MyTheme theme) {
    return ThemeData(
            useMaterial3: true,
            colorSchemeSeed: theme.getColor(),
            brightness: Brightness.light,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size.fromHeight(60)),
                maximumSize: MaterialStatePropertyAll(Size.fromHeight(60)),
                minimumSize: MaterialStatePropertyAll(Size.fromHeight(60)),
                backgroundColor: MaterialStatePropertyAll(
                  theme.getColor(),
                ),
                foregroundColor: MaterialStatePropertyAll(
                  ColorConstants.white,
                ),
              ),
            ),
            drawerTheme: DrawerThemeData(
                backgroundColor: Colors.transparent, elevation: 0),
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
              titleSmall: FontStylesConstants.nonito(
                  fontSize: 8, color: ColorConstants.black),
              titleMedium: FontStylesConstants.nonito(
                  fontSize: 10, color: ColorConstants.black),
              bodySmall: FontStylesConstants.nonito(
                  fontSize: 14, color: ColorConstants.black),
              bodyMedium: FontStylesConstants.nonito(
                  fontSize: 16, color: ColorConstants.black),
              bodyLarge: FontStylesConstants.nonito(
                  fontSize: 18, color: ColorConstants.black),
              labelSmall: FontStylesConstants.nonito(
                  fontSize: 20, color: ColorConstants.black),
              titleLarge: FontStylesConstants.nonito(
                  fontSize: 20, color: ColorConstants.black),
              labelMedium: FontStylesConstants.nonito(
                  fontSize: 22, color: ColorConstants.black),
              labelLarge: FontStylesConstants.nonito(
                  fontSize: 24, color: ColorConstants.black),
              headlineSmall: FontStylesConstants.nonito(
                  fontSize: 26, color: ColorConstants.black),
              headlineMedium: FontStylesConstants.nonito(
                  fontSize: 28, color: ColorConstants.black),
              headlineLarge: FontStylesConstants.nonito(
                  fontSize: 30, color: ColorConstants.black),
              displaySmall: FontStylesConstants.nonito(
                  fontSize: 32, color: ColorConstants.black),
              displayMedium: FontStylesConstants.nonito(
                  fontSize: 34, color: ColorConstants.black),
              displayLarge: FontStylesConstants.nonito(
                  fontSize: 36, color: ColorConstants.black),
            ),
          );
  }
