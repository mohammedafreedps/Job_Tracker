part of 'scheduled_bloc.dart';

@immutable
sealed class ScheduledEvent {}

final class LoadScheduledListEvent extends ScheduledEvent{
  final String query;
  LoadScheduledListEvent({required this.query});
}