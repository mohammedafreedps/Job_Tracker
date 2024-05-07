part of 'stared_bloc.dart';

@immutable
sealed class StaredEvent {}

class LoadAllStaredDataEvent extends StaredEvent{
  final String query;
  LoadAllStaredDataEvent({required this.query});
}

class StaredButtonClickedEvent extends StaredEvent{
  final String companyName;
  StaredButtonClickedEvent({required this.companyName});
}
