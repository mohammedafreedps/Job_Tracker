part of 'scheduled_bloc.dart';

@immutable
sealed class ScheduledState {}

final class ScheduledInitial extends ScheduledState {}

final class ShowScheduledListState extends ScheduledState{
  final List<JobTrackModel> model;
  ShowScheduledListState({required this.model});
}