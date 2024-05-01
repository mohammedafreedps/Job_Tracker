import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:meta/meta.dart';

part 'create_event.dart';
part 'create_state.dart';

class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc() : super(CreateInitial()) {
    on<ApplicationStatusSelectedEvent>((event, emit) {
      applicationStatus = event.selectedStatus;
      emit(ApplicationSelectedState(applicationState: event.selectedStatus));
    });
    on<JobTypeSelectedEvent>((event, emit) {
      jobType = event.selectedJobType;
      print(jobType! +  'ete');
      emit(JobTypeSelectedState(jobType: event.selectedJobType));
    });
    on<AppliedDateSelectedEvent>((event, emit) {
      appliedDate = event.selectedDate;
      emit(AppliedDateState(selectedDate: event.selectedDate));
    });
    on<AppliedTimeSelectedEvent>((event, emit) {
      appliedTime = event.time;
      emit(AppliedTimeState(time: event.time));
    });
    on<InterviewDateSelectedEvent>((event, emit) {
      interviewDate = event.date;
      emit(InterviewDateState(date: event.date));
    });
    on<InterviewTimeSelectedEvent>((event, emit) {
      interviewTime = event.time;
      emit(InterviewTimeState(time: event.time));
    });
  }
}
