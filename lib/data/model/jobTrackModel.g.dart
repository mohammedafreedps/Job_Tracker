// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobTrackModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JobTrackModelAdapter extends TypeAdapter<JobTrackModel> {
  @override
  final int typeId = 1;

  @override
  JobTrackModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JobTrackModel(
      companyName: fields[0] as String,
      jobTitle: fields[1] as String,
      jobDescription: fields[2] as String,
      applicationDate: fields[3] as DateTime,
      applicationTime: fields[14] as DateTime,
      applicationStatus: fields[4] as String,
      contactName: fields[5] as String?,
      contactEmail: fields[6] as String?,
      contactPhone: fields[7] as String?,
      applicationMethod: fields[8] as String,
      interviewDate: fields[9] as DateTime?,
      interviewTime: fields[13] as DateTime?,
      notes: fields[10] as String?,
      type: fields[11] as String,
      isStared: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, JobTrackModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.companyName)
      ..writeByte(1)
      ..write(obj.jobTitle)
      ..writeByte(2)
      ..write(obj.jobDescription)
      ..writeByte(3)
      ..write(obj.applicationDate)
      ..writeByte(4)
      ..write(obj.applicationStatus)
      ..writeByte(5)
      ..write(obj.contactName)
      ..writeByte(6)
      ..write(obj.contactEmail)
      ..writeByte(7)
      ..write(obj.contactPhone)
      ..writeByte(8)
      ..write(obj.applicationMethod)
      ..writeByte(9)
      ..write(obj.interviewDate)
      ..writeByte(10)
      ..write(obj.notes)
      ..writeByte(11)
      ..write(obj.type)
      ..writeByte(12)
      ..write(obj.isStared)
      ..writeByte(13)
      ..write(obj.interviewTime)
      ..writeByte(14)
      ..write(obj.applicationTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobTrackModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
