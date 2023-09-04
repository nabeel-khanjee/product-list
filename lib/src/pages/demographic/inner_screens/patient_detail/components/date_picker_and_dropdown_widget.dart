import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/demographic/inner_screens/patient_detail/components/date_picker_component.dart';

class DatePickerAndDropDownWidget extends StatelessWidget {
  const DatePickerAndDropDownWidget({
    super.key,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.country,
    required this.getCityValue,
    required this.selectedDate,
    required this.onDropdownFieldTapGender,
    required this.gender,
    required this.getGenderValue,
    required this.selectedGender,
  });

  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final List<String> country;
  final Function(String? p1) getCityValue;
  final String? selectedDate;
  final VoidCallback onDropdownFieldTapGender;
  final List<String> gender;
  final Function(String? p1) getGenderValue;
  final String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          Expanded(
            child: DatePickerComponent(
                onDatePickerTap: onDatePickerTap,
                onDropdownFieldTapCity: onDropdownFieldTapCity,
                country: country,
                getCityValue: getCityValue,
                selectedDate: selectedDate),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: DropDownComponentProfile(
              onDropdownFieldTap: onDropdownFieldTapGender,
              hintText: StringConstants.gender,
              items: gender,
              selectedItem: (value) {
                getGenderValue(value);
              },
              value: selectedGender,
            ),
          )
        ],
      ),
    );
  }
}
