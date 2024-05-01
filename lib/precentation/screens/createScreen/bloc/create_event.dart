part of 'create_bloc.dart';

@immutable
sealed class CreateEvent {}

class CreteButtonPressedEvent extends CreateEvent {
  final String companyName;
  final String jobTitle;
  final String jobDescription;
  final String? contactName;
  final String? contactEmail;
  final String? contactNumber;
  final String? notes;
  final String jobType;
  final String applicationStatus;
  final String applicationMethod;
  final DateTime applicationDate;
  final DateTime? interviewDate;
  CreteButtonPressedEvent(
      {required this.companyName,
      required this.jobTitle,
      required this.jobDescription,
      this.contactName,
      this.contactEmail,
      this.contactNumber,
      this.notes,
      required this.jobType,
      required this.applicationStatus,
      required this.applicationMethod,
      required this.applicationDate,
      this.interviewDate});
}

class ApplicationStatusSelectedEvent extends CreateEvent{
  final String selectedStatus;
  ApplicationStatusSelectedEvent({required this.selectedStatus});
} 

class JobTypeSelectedEvent extends CreateEvent{
  final String selectedJobType;
  JobTypeSelectedEvent({required this.selectedJobType});
}

class AppliedDateSelectedEvent extends CreateEvent{
  final DateTime selectedDate;
  AppliedDateSelectedEvent({required this.selectedDate});
}

class AppliedTimeSelectedEvent extends CreateEvent{
  final DateTime time;
  AppliedTimeSelectedEvent({required this.time});
}

class InterviewDateSelectedEvent extends CreateEvent{
  final DateTime date;
  InterviewDateSelectedEvent({required this.date});
}

class InterviewTimeSelectedEvent extends CreateEvent{
  final DateTime time;
  InterviewTimeSelectedEvent({required this.time});
}