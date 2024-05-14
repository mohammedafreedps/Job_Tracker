part of 'job_detail_bloc.dart';

@immutable
sealed class JobDetailState {}

final class JobDetailInitial extends JobDetailState {}

class IsEditableState extends JobDetailState{}

