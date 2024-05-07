import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';

class CreateScreenFunctions {


  static DateTime convertTimeOfDayToDateTime({required TimeOfDay timeOfDay}) {
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
  }

  static saveData(BuildContext context) {
    if (companyNameController.text.isNotEmpty &&
        jobTitleController.text.isNotEmpty &&
        jobDescriptionController.text.isNotEmpty &&
        appliedDate != null &&
        applicationStatus != null &&
        applicationMethodController.text.isNotEmpty &&
        type != null &&
        appliedTime != null) {
      context.read<CreateBloc>().add(SaveButtonClickEvent(
          companyName: companyNameController.text,
          jobTitle: jobTitleController.text,
          jobDescription: jobDescriptionController.text,
          applicationDate: appliedDate!,
          applicationMethod: applicationMethodController.text,
          applicationStatus: applicationStatus!,
          type: type!,
          applicationTime: appliedTime!,
          contactName: contactNameController.text,
          contactEmail: contactEmailController.text,
          contactPhone: contactPhoneController.text,
          interviewDate: interviewDate,
          interviewTime: interviewTime,
          notes: notesController.text));
          resetValues();
    }else{
      context.read<CreateBloc>().add(FieldNotEnteredEvent());
    }
  }
  static void resetValues(){
    companyNameController.clear();
    jobTitleController.clear();
    jobDescriptionController.clear();
    appliedDate = null;
    applicationState = null;
    contactNameController.clear();
    contactEmailController.clear();
    contactPhoneController.clear();
    applicationMethodController.clear();
    interviewDate = null;
    notesController.clear();
    type = null;
    interviewTime = null;
    appliedTime = null;
  }
}
