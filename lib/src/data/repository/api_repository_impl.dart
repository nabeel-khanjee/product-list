import 'dart:io';

import 'package:logger/logger.dart';
import 'package:provider_app/src/data/common/object_mapper.dart';
import 'package:provider_app/src/data/datasource/api/at_care_api.dart';
import 'package:provider_app/src/domain/domain.dart';
import 'package:provider_app/src/domain/model/appointment.dart';
import 'package:provider_app/src/domain/model/data_list.dart';
import 'package:provider_app/src/domain/model/docotor.dart';
import 'package:provider_app/src/domain/model/medical_records.dart';

class ApiRepositoryImpl extends ApiRepository {
  final ATCareApi atCareApi;
  final ObjectMapper objectMapper;
  final Logger logger;

  ApiRepositoryImpl({
    required this.atCareApi,
    required this.objectMapper,
    required this.logger,
  });

  @override
  Future<Result<AnimatedDrawer>> getDashboardOverview() async {
    try {
      final response = await atCareApi.getDashBoardOverview();
      return Result.success(objectMapper.toDashboardOverview(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<LastHealthScan>>> getSehatScanHistory(date) async {
    try {
      final response = await atCareApi.getSehatScanHistory(date);
      return Result.success(objectMapper.toSehatScanHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistory() async {
    try {
      final response = await atCareApi.getMedicalRecordsHistory();
      return Result.success(objectMapper.toMedicalRecordsHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<Appointment>>> getPastAppointments(
      String endDate, String startDate) async {
    try {
      final response = await atCareApi.getPastAppointments(
          endDate: endDate, startDate: startDate);
      return Result.success(objectMapper.toPastAppointments(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> addMedicalRecords(
    List<File> filesList,
    List<int> ids,
    String date,
    String fileName,
    bool isInstantConsultationScreen,
  ) async {
    try {
      await atCareApi.addMedicalRecords(
          filesList, ids, date, fileName, isInstantConsultationScreen);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> editMedicalRecords(
      List<File> filesList,
      List<int> ids,
      String date,
      String fileName,
      String? medicalRecordId,
      bool isInstantConsultationScreen) async {
    try {
      await atCareApi.editMedicalRecords(filesList, ids, date, fileName,
          medicalRecordId, isInstantConsultationScreen);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<DataList<Doctor>>> getDoctors(
      {required int medicalRecordId}) async {
    try {
      final response =
          await atCareApi.getDoctors(medicalRecordId: medicalRecordId);
      return Result.success(objectMapper.toDoctorsList(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> shareMedicalRecord(
      int doctorId, int medicalRecordId, bool isFromInstantConsultation) async {
    try {
      await atCareApi.shareMedicalRecord(doctorId, medicalRecordId,
          isFromInstantConsultation: isFromInstantConsultation);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> deleteMedicalRecord(int medicalRecordId) async {
    try {
      await atCareApi.deleteMedicalRecord(medicalRecordId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result> deleteMedicalRecordFile(int fileId) async {
    try {
      await atCareApi.deleteMedicalRecordFile(fileId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  Future<Result> downloadMedicalRecord(int medicalRecordId) async {
    try {
      await atCareApi.deleteMedicalRecord(medicalRecordId);
      return Result.success("");
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }

  @override
  Future<Result<List<MedicalRecords>>> getMedicalRecordsHistoryB(
      String startFrom, String endedTo) async {
    try {
      final response =
          await atCareApi.getMedicalRecordsHistoryB(startFrom, endedTo);
      return Result.success(objectMapper.toMedicalRecordsHistory(response));
    } on Exception catch (e) {
      logger.e(e);
      return Result.failed(objectMapper.toError(e));
    }
  }
}
