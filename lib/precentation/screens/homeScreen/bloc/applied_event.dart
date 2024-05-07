part of 'applied_bloc.dart';

@immutable
sealed class AppliedEvent {}

class SearchDataFromLocalDataBase extends AppliedEvent{
  final String query;
  SearchDataFromLocalDataBase({required this.query});
}

class StarButtonClickedEvent extends AppliedEvent{
  final String companyName;
  StarButtonClickedEvent({required this.companyName});
}
