part of 'stared_bloc.dart';

@immutable
sealed class StaredState {}

final class StaredInitial extends StaredState {}

final class ShowStaredListState extends StaredState{
  final List<JobTrackModel> model;
  ShowStaredListState({required this.model});
}
