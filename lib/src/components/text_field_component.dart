import 'package:flutter/services.dart';
import 'package:provider_app/src/app/app_export.dart';

class TextFormFieldComponentProfile extends StatelessWidget {
  const TextFormFieldComponentProfile({
    super.key,
    required this.patientIdcontroller,
    this.listTextInputFormatter,
    required this.label,
    this.maxLines = 1,
    this.hintText = '',
  });
  final List<TextInputFormatter>? listTextInputFormatter;
  final String label;
  final TextEditingController patientIdcontroller;
  final int maxLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        strutStyle: const StrutStyle(
          height: 1.3,
        ),
        maxLines: maxLines,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
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
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
            labelStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
            label: Text(label,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: ColorConstants.greyText,
                    )),
            border: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorConstants.white, width: 0),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
