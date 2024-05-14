part of 'edit_bloc.dart';

@immutable
sealed class EditEvent {}

class EditApplicationStatusEvent extends EditEvent{
  final String selectedStatus;
  EditApplicationStatusEvent({required this.selectedStatus});
} 

class EditNameTitleStatusEvent extends EditEvent{
  final int index;
  final List<JobTrackModel> model;
  EditNameTitleStatusEvent({required this.index,required this.model});
}

class EditAppledDateTimeEvent extends EditEvent{
  final DateTime date;
  final DateTime time;
  final int index;
  final List<JobTrackModel> model;
  EditAppledDateTimeEvent({required this.date,required this.index,required this.model,required this.time});
}

class EditSelectedAppliedDateEvent extends EditEvent{
  final DateTime date;
  EditSelectedAppliedDateEvent({required this.date});
}

class EditSelectedAppliedTimeEvent extends EditEvent{
  final TimeOfDay time;
  EditSelectedAppliedTimeEvent({required this.time});
}