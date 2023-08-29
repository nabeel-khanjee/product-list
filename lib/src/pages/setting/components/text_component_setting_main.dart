
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/constant/font_constants.dart';

class TextComponentSettingMainHeading extends StatelessWidget {
  const TextComponentSettingMainHeading({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: FontStylesConstants.gilroy(
      fontFamily: FontConstantc.gilroyRegular,
      fontSize: 20));
  }
}
