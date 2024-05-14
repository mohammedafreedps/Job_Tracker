part of 'edit_bloc.dart';

@immutable
sealed class EditState {}

final class EditInitial extends EditState {}

class ApplicationStatusEditedState extends EditState {}

class DatasEdited extends EditState {}

class SelectedAppliedDateEditState extends EditState {}

class SelectedAppliedTimeEditState extends EditState {}
