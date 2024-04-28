import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

part 'jobTrackModel.g.dart';

@HiveType(typeId: 1)
class JobTrackModel {
  @HiveField(0)
  String companyName;

  @HiveField(1)
  String jobTitle;

  @HiveField(2)
  String jobDescription;

  @HiveField(3)
  DateTime applicationDate;

  @HiveField(4)
  String applicationStatus;

  @HiveField(5)
  String? contactName;

  @HiveField(6)
  String? contactEmail;

  @HiveField(7)
  String? contactPhone;

  @HiveField(8)
  String applicationMethod;

  @HiveField(9)
  DateTime? interviewDate;

  @HiveField(10)
  String? notes;

  @HiveField(11)
  String type;

  @HiveField(12)
  bool isStared;

  JobTrackModel(
      {required this.companyName,
      required this.jobTitle,
      required this.jobDescription,
      required this.applicationDate,
      required this.applicationStatus,
      this.contactName,
      this.contactEmail,
      this.contactPhone,
      required this.applicationMethod,
      this.interviewDate,
      this.notes,
      required this.type,
      this.isStared = false});
}
