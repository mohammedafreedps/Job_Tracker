part of 'create_bloc.dart';

@immutable
sealed class CreateState {}

final class CreateInitial extends CreateState {}

class ApplicationSelectedState extends CreateState{
  final String applicationState;
  ApplicationSelectedState({required this.applicationState});
}

class JobTypeSelectedState extends CreateState{
  final String jobType;
  JobTypeSelectedState({required this.jobType});
}

class AppliedDateState extends CreateState{
  final DateTime selectedDate;
  AppliedDateState({required this.selectedDate});
}

class AppliedTimeState extends CreateState{
  final DateTime time;
  AppliedTimeState({required this.time});
}

class InterviewDateState extends CreateState{
  final DateTime date;
  InterviewDateState({required this.date});
}

class InterviewTimeState extends CreateState{
  final DateTime time;
  InterviewTimeState({required this.time});
}