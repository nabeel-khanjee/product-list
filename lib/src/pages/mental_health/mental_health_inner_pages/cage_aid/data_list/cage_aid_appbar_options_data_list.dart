import 'package:provider_app/src/app/app_export.dart';

List<CheckBoxListData> cageAidCheckBoxList = [
  CheckBoxListData(
      false,
      StringConstants
          .patientIsAMinorAndNoAlcoholOrDrugUseIsSuspectedNoFurtherActionIsRequired),
  CheckBoxListData(
      false,
      StringConstants
          .patientDeniesNnyAlcoholOrDrugUseNoFurtherActionIsRequired),
  CheckBoxListData(
      false,
      StringConstants
          .patientDeclinesScreeningForAlcoholOrDrugUseNoFurtherActionIsRequired),
  CheckBoxListData(
      false, StringConstants.patientIsCurrentlyReceivingSUDTreatmentAgencyPOC),
];
