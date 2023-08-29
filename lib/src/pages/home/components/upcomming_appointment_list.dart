  import 'package:provider_app/src/app/app_export.dart';

List<UpCommingAppointmentData> upcommingAppointment = [
    UpCommingAppointmentData(
        date: StringConstants.eightMar0920am,
        title: StringConstants.videoConsultation,
        dec: StringConstants.waitingForCall,
        docName: StringConstants.drRachelBrown,
        docImage: AssetsConstants.upcommingAppointmentCardDoctorImage)
  ];

class UpCommingAppointmentData {
  final String docImage;
  final String dec;
  final String title;
  final String docName;
  final String date;

  UpCommingAppointmentData(
      {required this.docImage,
      required this.dec,
      required this.title,
      required this.docName,
      required this.date});
}
