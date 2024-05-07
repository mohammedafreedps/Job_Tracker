part of 'applied_bloc.dart';

@immutable
sealed class AppliedState {}

final class AppliedInitial extends AppliedState {}

class ShowAppliedList extends AppliedState{
  final List<JobTrackModel> jobTrackModelList;
  ShowAppliedList({required this.jobTrackModelList});
}
