import 'package:provider_app/src/app/app_export.dart';

class ContactDetailScreenForm extends StatelessWidget {
  const ContactDetailScreenForm({
    super.key,
    required this.formkey,
    required this.cellPhoneNumberController,
    required this.residenceNumberController,
    required this.addressController,
    required this.selectStateController,
    required this.suffixController,
    required this.onDatePickerTap,
    required this.onDropdownFieldTapCity,
    required this.country,
    required this.getCityValue,
    required this.selectedDate,
    required this.onDropdownFieldTapGender,
    required this.gender,
    required this.getGenderValue,
    required this.selectedGender,
    required this.ssnController,
    required this.onDropdownFieldTapCountry,
    required this.getCountryValue,
    required this.selectedCountry,
    required this.onDropdownFieldTapState,
    required this.states,
    required this.getStateValue,
    required this.selectedStates,
    required this.zipCodeController,
    required this.selectCityController,
    required this.subHeadingTwoDemographicInnerScreen,
    required this.subHeadingOneDemographicInnerScreen,
    required this.phoneNumberPharmacyController,
    required this.nameContactDetailController,
    required this.relationContactController,
    required this.contactNumberContactDetailController,
    required this.pharmacyNamePharmacyConroller,
    required this.addressPharmacyController,
    required this.cityPharmacyController,
    required this.zipCodePharmacyController,
  });
  final GlobalKey<FormState> formkey;
  final String subHeadingTwoDemographicInnerScreen;
  final String subHeadingOneDemographicInnerScreen;
  final TextEditingController phoneNumberPharmacyController;
  final TextEditingController nameContactDetailController;
  final TextEditingController relationContactController;
  final TextEditingController contactNumberContactDetailController;
  final TextEditingController pharmacyNamePharmacyConroller;
  final TextEditingController addressPharmacyController;
  final TextEditingController cityPharmacyController;
  final TextEditingController zipCodePharmacyController;

  final TextEditingController zipCodeController;
  final TextEditingController selectCityController;
  final TextEditingController cellPhoneNumberController;
  final TextEditingController residenceNumberController;
  final TextEditingController addressController;
  final TextEditingController selectStateController;
  final TextEditingController suffixController;
  final VoidCallback onDatePickerTap;
  final VoidCallback onDropdownFieldTapCity;
  final List<String> country;
  final Function(String? value) getCityValue;
  final String? selectedDate;
  final VoidCallback onDropdownFieldTapGender;
  final List<String> gender;
  final Function(String? value) getGenderValue;
  final String? selectedGender;
  final TextEditingController ssnController;
  final VoidCallback onDropdownFieldTapCountry;
  final Function(String? value) getCountryValue;
  final String? selectedCountry;
  final VoidCallback onDropdownFieldTapState;
  final List<String> states;
  final Function(String? value) getStateValue;
  final String? selectedStates;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormFieldComponentProfile(
                  label: StringConstants.cellPhoneNumber,
                  patientIdcontroller: cellPhoneNumberController,
                  listTextInputFormatter: [
                    CardFormatter(sample: '(xxx)xxx-xxxx', separator: '-')
                  ]),
              TextFormFieldComponentProfile(
                label: StringConstants.residenceNumber,
                patientIdcontroller: residenceNumberController,
                listTextInputFormatter: [
                  CardFormatter(sample: '(xxx)xxx-xxxx', separator: '-')
                ],
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.address,
                patientIdcontroller: addressController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.selectCity,
                patientIdcontroller: selectCityController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.selectState,
                patientIdcontroller: selectStateController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.zipCode,
                patientIdcontroller: zipCodeController,
              ),
              DropDownComponentProfile(
                onDropdownFieldTap: onDropdownFieldTapCountry,
                hintText: StringConstants.selectCountry,
                items: country,
                selectedItem: (value) => getCountryValue(value),
                value: selectedCountry,
              ),
              TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen:
                      subHeadingOneDemographicInnerScreen),
              TextFormFieldComponentProfile(
                label: StringConstants.name,
                patientIdcontroller: nameContactDetailController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.relation,
                patientIdcontroller: relationContactController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.contactNumber,
                patientIdcontroller: contactNumberContactDetailController,
              ),
              TitleDemographicsMainHeadingInnerPage(
                  titleDemographicInnerScreen:
                      subHeadingTwoDemographicInnerScreen),
              TextFormFieldComponentProfile(
                label: StringConstants.pharmacyName,
                patientIdcontroller: pharmacyNamePharmacyConroller,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.yourPharmacyAddress,
                patientIdcontroller: addressPharmacyController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.city,
                patientIdcontroller: cityPharmacyController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.zipCode,
                patientIdcontroller: zipCodePharmacyController,
              ),
              TextFormFieldComponentProfile(
                label: StringConstants.phoneNumber,
                patientIdcontroller: phoneNumberPharmacyController,
              ),
            ]));
  }
}
