import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/functions.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';

Future<void> timeSelector({required BuildContext context,required bool isApplied, bool? isEdit})async {
  TimeOfDay selectedTime = TimeOfDay.now();
  final TimeOfDay? timePicke = await showTimePicker(initialEntryMode: TimePickerEntryMode.dial, context: context, initialTime: selectedTime);
  if(timePicke != null){
    selectedTime = timePicke;
    if(isApplied){
      context.read<CreateBloc>().add(AppliedTimeSelectedEvent(time: CreateScreenFunctions.convertTimeOfDayToDateTime(timeOfDay: timePicke)));
    }else{
      context.read<CreateBloc>().add(InterviewTimeSelectedEvent(time: CreateScreenFunctions.convertTimeOfDayToDateTime(timeOfDay: timePicke)));
    }
    if(isApplied && isEdit != null && isEdit){
      context.read<EditBloc>().add(EditSelectedAppliedTimeEvent(time: timePicke));
    }
  }
}