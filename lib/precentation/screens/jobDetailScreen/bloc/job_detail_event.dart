part of 'job_detail_bloc.dart';

@immutable
sealed class JobDetailEvent {}

class EnableEditButtonClickedEvent extends JobDetailEvent{
  final bool isEditable;
  EnableEditButtonClickedEvent({required this.isEditable});
}

