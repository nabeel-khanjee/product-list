import 'package:flutter/services.dart';
import 'package:provider_app/src/app/app_export.dart';

class TextFormFieldComponentProfile extends StatelessWidget {
  const TextFormFieldComponentProfile({
    super.key,
    required this.patientIdcontroller,
    this.listTextInputFormatter,
    required this.label,
  });
  final List<TextInputFormatter>? listTextInputFormatter;
  final String label;
  final TextEditingController patientIdcontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        strutStyle: StrutStyle(
          height: 1.5,
        ),
        inputFormatters: listTextInputFormatter,
        controller: patientIdcontroller,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontFamily: FontConstantc.gilroyMedium,
            color: darken(
              getThemeColor(context),
              0.4,
            )),
        decoration: InputDecoration(
            focusColor: getThemeColor(context),
            filled: true,
            fillColor: ColorConstants.white,
            labelStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
            label: Text(label,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: ColorConstants.greyText,
                    )),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
