import 'package:provider_app/src/app/app_export.dart';

class FontStylesConstants {
  ///Noto Naskh Arabic
  static TextStyle notoNaskhArabic(
          {required double fontSize,
          Color color = ColorConstants.black,
          FontWeight fontWeight = FontWeight.normal,
          TextDecoration decoration = TextDecoration.none,
          double letterSpacing = 0,
          double height = 1.1,
          bool isBaseLine = false}) =>
      GoogleFonts.notoNaskhArabic(
        color: color,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 1.4,
        letterSpacing: letterSpacing,
      );
  static TextStyle nonito(
          {required double fontSize,
          Color? color,
          FontWeight fontWeight = FontWeight.normal,
          TextDecoration decoration = TextDecoration.none,
          double letterSpacing = 0,
          double height = 1.1,
          bool isBaseLine = false}) =>
      GoogleFonts.nunito(
        color: color,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontSize: fontSize,
        height: 1.4,
        letterSpacing: letterSpacing,
      );
}
