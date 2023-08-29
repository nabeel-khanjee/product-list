import 'package:provider_app/src/app/app_export.dart';

List<UpCommingAppointmentData> upcommingAppointment = [
  UpCommingAppointmentData(
      date: StringConstants.eightMar0920am,
      title: StringConstants.videoConsultation,
      dec: StringConstants.waitingForCall,
      decColor: ColorConstants.yellowGolden,
      titleColor: ColorConstants.white,
      docName: StringConstants.drRachelBrown,
      docImage: AssetsConstants.upcommingAppointmentCardDoctorImage),
  UpCommingAppointmentData(
      date: StringConstants.eightMar0920am,
      title: StringConstants.audioConsultation,
      dec: StringConstants.waitingForCall,
      decColor: ColorConstants.green,
      titleColor: ColorConstants.white,
      docName: StringConstants.drRachelBrown,
      docImage: AssetsConstants.upcommingAppointmentCardDoctorImage),
  UpCommingAppointmentData(
      date: StringConstants.eightMar0920am,
      title: StringConstants.diagnosticTests,
      dec: StringConstants.diagnosticTests,
      decColor: getThemeColor(navigationService!.navigatorKey.currentContext!),
      titleColor: Theme.of(navigationService!.navigatorKey.currentContext!)
          .scaffoldBackgroundColor,
      docName: StringConstants.drRachelBrown,
      docImage: AssetsConstants.upcommingAppointmentCardDoctorImage)
];

class UpCommingAppointmentData {
  final String docImage;
  final String dec;
  final String title;

  final String docName;
  final String date;
  final Color decColor;
  final Color titleColor;

  UpCommingAppointmentData(
      {required this.docImage,
      required this.titleColor,
      required this.dec,
      required this.decColor,
      required this.title,
      required this.docName,
      required this.date});
}
