import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/card_formater.dart';
import 'package:provider_app/src/components/text_field_component.dart';
import 'package:provider_app/src/pages/demographic/components/dropdown_component_profile.dart';

class PatientDetailScreen extends StatelessWidget {
  const PatientDetailScreen({
    super.key,
    required this.formkey,
    required this.patientIdController,
    required this.firstNameController,
    required this.middleNameController,
    required this.lastNameController,
    required this.suffixController,
    required this.country,
    required this.selectedDate,
    required this.gender,
    required this.selectedGender,
    required this.ssnController,
    required this.selectedCity,
    required this.states,
    required this.selectedStates,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.onDropdownFieldTapGender,
    required this.onDropdownFieldTapCountry,
    required this.onDropdownFieldTapState,
    required this.getCityValue,
    required this.getStateValue,
    required this.getGenderValue,
    required this.getCountryValue,
    this.selectedCountry,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController patientIdController;
  final TextEditingController firstNameController;
  final TextEditingController middleNameController;
  final TextEditingController lastNameController;
  final TextEditingController suffixController;
  final List<String> country;
  final String? selectedDate;
  final List<String> gender;
  final String? selectedGender;
  final TextEditingController ssnController;
  final String? selectedCity;
  final List<String> states;
  final String? selectedStates;
  final String? selectedCountry;

  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final VoidCallback onDropdownFieldTapGender;
  final VoidCallback onDropdownFieldTapCountry;
  final VoidCallback onDropdownFieldTapState;
  final Function(String?) getCityValue;
  final Function(String?) getStateValue;
  final Function(String?) getGenderValue;
  final Function(String?) getCountryValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              StringConstants.patientDetails,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: getThemeColor(context),
                  fontFamily: FontConstantc.gilroySemiBold),
            )),
            SizedBox(height: 10),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormFieldComponentProfile(
                        label: StringConstants.patientID,
                        patientIdcontroller: patientIdController,
                        listTextInputFormatter: [
                          CardFormatter(
                              sample: 'xxxx-xxxx-xxxx-xxxx', separator: '-')
                        ]),
                    TextFormFieldComponentProfile(
                      label: StringConstants.firstName,
                      patientIdcontroller: firstNameController,
                    ),
                    TextFormFieldComponentProfile(
                      label: StringConstants.middleName,
                      patientIdcontroller: middleNameController,
                    ),
                    TextFormFieldComponentProfile(
                      label: StringConstants.lastName,
                      patientIdcontroller: lastNameController,
                    ),
                    TextFormFieldComponentProfile(
                      label: StringConstants.suffix,
                      patientIdcontroller: suffixController,
                    ),
                    SizedBox(
                      height: 75,
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
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
                            ),
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
                    ),
                    TextFormFieldComponentProfile(
                      label: StringConstants.ssn,
                      patientIdcontroller: ssnController,
                    ),
                    DropDownComponentProfile(
                      onDropdownFieldTap: onDropdownFieldTapCountry,
                      hintText: StringConstants.selectCountry,
                      items: country,
                      selectedItem: (value) {
                        getCountryValue(value);
                      },
                      value: selectedCountry,
                    ),
                    DropDownComponentProfile(
                      onDropdownFieldTap: onDropdownFieldTapState,
                      hintText: StringConstants.selectState,
                      items: states,
                      selectedItem: (value) {
                        getStateValue(value);
                      },
                      value: selectedStates,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
