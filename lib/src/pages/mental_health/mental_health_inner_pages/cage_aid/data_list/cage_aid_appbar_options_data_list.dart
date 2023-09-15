import 'package:provider_app/src/app/app_export.dart';

List<CageAidAppBarOptions> cageAidAppBarOptions = [
  CageAidAppBarOptions(
      false,
      StringConstants
          .patientIsAMinorAndNoAlcoholOrDrugUseIsSuspectedNoFurtherActionIsRequired),
  CageAidAppBarOptions(
      false,
      StringConstants
          .patientDeniesNnyAlcoholOrDrugUseNoFurtherActionIsRequired),
  CageAidAppBarOptions(
      false,
      StringConstants
          .patientDeclinesScreeningForAlcoholOrDrugUseNoFurtherActionIsRequired),
  CageAidAppBarOptions(
      false, StringConstants.patientIsCurrentlyReceivingSUDTreatmentAgencyPOC),
];
