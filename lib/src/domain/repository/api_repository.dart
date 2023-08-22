import 'dart:io';
import 'package:provider_app/src/domain/domain.dart';
import 'package:provider_app/src/domain/model/appointment.dart';
import 'package:provider_app/src/domain/model/data_list.dart';
import 'package:provider_app/src/domain/model/docotor.dart';
import 'package:provider_app/src/domain/model/medical_records.dart';

abstract class ApiRepository extends Repository {
  ///
  /// get user dashboard overview
  ///
  Future<Result<AnimatedDrawer>> getDashboardOverview();

  ///
  /// get sehatScan history
  ///
  Future<Result<List<LastHealthScan>>> getSehatScanHistory(date);

  ///
  /// get appointments history
  ///
  Future<Result<List<Appointment>>> getPastAppointments(
      String startDate, String endDate);

  ///
  /// get Medical records history
  ///
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistory();
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistoryB(
      String a, String b);

  ///
  /// add Medical records
  ///
  Future<Result> addMedicalRecords(
    List<File> filesList,
    List<int> ids,
    String date,
    String fileName,
    bool isInstantConsultationScreen,
  );

  ///
  /// get doctors data
  ///
  Future<Result<DataList<Doctor>>> getDoctors({required int medicalRecordId});

  ///
  /// add Medical records
  ///
  Future<Result> shareMedicalRecord(
    int doctorId,
    int medicalRecordId,
    bool isFromInstantConsultation,
  );

  ///
  /// delete Medical records
  ///
  Future<Result> deleteMedicalRecord(int medicalRecordId);

  ///
  /// delete Medical record file
  ///
  Future<Result> deleteMedicalRecordFile(int fileId);

  Future<Result> editMedicalRecords(
      List<File> filesList,
      List<int> ids,
      String date,
      String fileName,
      String? medicalRecordId,
      bool isInstantConsultationScreen);

}