import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/utils/boxes.dart';
import 'package:meta/meta.dart';

part 'edit_event.dart';
part 'edit_state.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(EditInitial()) {
    on<EditEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<EditApplicationStatusEvent>((event, emit) {
      editedApplicationStatus = event.selectedStatus;
      emit(ApplicationStatusEditedState());
    });

    on<EditNameTitleStatusEvent>((event, emit) {
      int correctIndex = 0;
      for (int i = 0; i < event.model.length; i++) {
        correctIndex = allJobTrackModelList.indexWhere((element) =>
            element.companyName == event.model[event.index].companyName);
      }
      JobTrackModel hold = jobTrackerBox.getAt(correctIndex);
      hold.companyName = editCompanyNameController.text;
      hold.jobTitle = editJobTitleController.text;
      hold.applicationStatus = editedApplicationStatus!;
      jobTrackerBox.putAt(correctIndex, hold);
      emit(DatasEdited());
    });

    on<EditAppledDateTimeEvent>((event, emit) {
      int correctIndex = 0;
      for (int i = 0; i < event.model.length; i++) {
        correctIndex = allJobTrackModelList.indexWhere((element) =>
            element.companyName == event.model[event.index].companyName);
      }
      JobTrackModel hold = jobTrackerBox.getAt(correctIndex);
      hold.applicationDate = event.date;
      hold.applicationTime = event.time;
      jobTrackerBox.putAt(correctIndex, hold);
      emit(DatasEdited());
    });

    on((event, emit) {});

    on<EditSelectedAppliedDateEvent>((event, emit) {
      editAppliedDate = event.date;
      emit(SelectedAppliedDateEditState());
    });

    on<EditSelectedAppliedTimeEvent>((event, emit) {
      editAppliedTime = event.time;
      emit(SelectedAppliedTimeEditState());
    });
  }
}
