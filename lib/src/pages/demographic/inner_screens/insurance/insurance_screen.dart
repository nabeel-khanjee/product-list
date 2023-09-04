import 'package:provider_app/src/app/app_export.dart';

class DemographicInsuranceScreen extends StatelessWidget {
  const DemographicInsuranceScreen({
    super.key,
    required this.primaryInsuranceNameController,
    required this.primaryInsuranceSelectedDateHealtPlan,
    required this.primaryInsurancememberIdController,
    required this.primaryInsuranceinsuranceGroupController,
    required this.primaryInsuranceSelectedDateEndDate,
    required this.primaryInsuranceBinController,
    required this.secondaryInsuranceNameController,
    required this.secondaryInsuranceSelectedDateHealtPlan,
    required this.secondaryInsurancememberIdController,
    required this.secondaryInsuranceinsuranceGroupController,
    required this.secondaryInsuranceSelectedDateEndDate,
    required this.secondaryInsuranceBinController,
    required this.pharmacyPayerIdController,
    required this.pharmacyrxBinController,
    required this.pharmacyrxGroupController,
    required this.pharmacyrxGroupPCNController,
    required this.formkeyInsuranceDetail, required this.onTapPrimaryInsuranceHealthPlan, required this.onTapSecondaryInsuranceHealthPlan, required this.onTapPrimaryInsuranceEndDate, required this.onTapSecondaryInsuranceEndDate,
  });
  final GlobalKey<FormState> formkeyInsuranceDetail;
  final TextEditingController primaryInsuranceNameController;
  final String? primaryInsuranceSelectedDateHealtPlan;
  final TextEditingController primaryInsurancememberIdController;
  final TextEditingController primaryInsuranceinsuranceGroupController;
  final String? primaryInsuranceSelectedDateEndDate;
  final TextEditingController primaryInsuranceBinController;
  final TextEditingController secondaryInsuranceNameController;
  final String? secondaryInsuranceSelectedDateHealtPlan;
  final TextEditingController secondaryInsurancememberIdController;
  final TextEditingController secondaryInsuranceinsuranceGroupController;
  final String? secondaryInsuranceSelectedDateEndDate;
  final TextEditingController secondaryInsuranceBinController;
  final TextEditingController pharmacyPayerIdController;
  final TextEditingController pharmacyrxBinController;
  final TextEditingController pharmacyrxGroupController;
  final TextEditingController pharmacyrxGroupPCNController;
  final VoidCallback onTapPrimaryInsuranceHealthPlan;
  final VoidCallback onTapSecondaryInsuranceHealthPlan;
  final VoidCallback onTapPrimaryInsuranceEndDate;
  final VoidCallback onTapSecondaryInsuranceEndDate;
  
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkeyInsuranceDetail,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen:
                    StringConstants.primaryInsurance),
            TextFormFieldComponentProfile(
                patientIdcontroller: primaryInsuranceNameController,
                label: StringConstants.insuranceName),
            DatePickerComponent(
                datePickerTitle: StringConstants.healthPlan,
                country: [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapPrimaryInsuranceHealthPlan,
                selectedDate: primaryInsuranceSelectedDateHealtPlan),
            TextFormFieldComponentProfile(
                patientIdcontroller: primaryInsurancememberIdController,
                label: StringConstants.memberId),
            TextFormFieldComponentProfile(
                patientIdcontroller: primaryInsuranceinsuranceGroupController,
                label: StringConstants.insuranceGroup),
            DatePickerComponent(
                datePickerTitle: StringConstants.endDate,
                country: [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapPrimaryInsuranceEndDate,
                selectedDate: primaryInsuranceSelectedDateEndDate),
            TextFormFieldComponentProfile(
                patientIdcontroller: primaryInsuranceBinController,
                label: StringConstants.bin),
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen:
                    StringConstants.secondaryInsurance),
            TextFormFieldComponentProfile(
                patientIdcontroller: secondaryInsuranceNameController,
                label: StringConstants.insuranceName),
            DatePickerComponent(
                datePickerTitle: StringConstants.healthPlan,
                country: [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapSecondaryInsuranceHealthPlan,
                selectedDate: secondaryInsuranceSelectedDateHealtPlan),
            TextFormFieldComponentProfile(
                patientIdcontroller: secondaryInsurancememberIdController,
                label: StringConstants.memberId),
            TextFormFieldComponentProfile(
                patientIdcontroller:
                    secondaryInsuranceinsuranceGroupController,
                label: StringConstants.insuranceGroup),
            DatePickerComponent(
                datePickerTitle: StringConstants.endDate,
                country: [],
                getCityValue: (p1) {},
                onDropdownFieldTapCity: () {},
                onDatePickerTap: onTapSecondaryInsuranceEndDate,
                selectedDate: secondaryInsuranceSelectedDateEndDate),
            TextFormFieldComponentProfile(
                patientIdcontroller: secondaryInsuranceBinController,
                label: StringConstants.bin),
            TitleDemographicsMainHeadingInnerPage(
                titleDemographicInnerScreen: StringConstants.pharmacy),
            TextFormFieldComponentProfile(
                patientIdcontroller: pharmacyPayerIdController,
                label: StringConstants.payerId),
            TextFormFieldComponentProfile(
                patientIdcontroller: pharmacyrxBinController,
                label: StringConstants.rxBin),
            TextFormFieldComponentProfile(
                patientIdcontroller: pharmacyrxGroupController,
                label: StringConstants.rxGroup),
            TextFormFieldComponentProfile(
                patientIdcontroller: pharmacyrxGroupPCNController,
                label: StringConstants.rxGroupPCN),
          ],
        ),
      ),
    );
  }
}