import 'package:provider_app/src/app/app_export.dart';

class DatePickerComponent extends StatelessWidget {
  const DatePickerComponent({
    super.key,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.country,
    required this.getCityValue,
    required this.selectedDate,
  });

  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final List<String> country;
  final Function(String? p1) getCityValue;
  final String? selectedDate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onDatePickerTap,
      child: Stack(
        children: [
          DropDownComponentProfile(
            onDropdownFieldTap: onDropdownFieldTapCity,
            suffixIcon: AssetsConstants.calenderIcon,
            hintText: StringConstants.dateOfBirth,
            items: country,
            selectedItem: (value) {
              getCityValue(value);
            },
            value: selectedDate,
          ),
          Container(
            color: Colors.transparent,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
