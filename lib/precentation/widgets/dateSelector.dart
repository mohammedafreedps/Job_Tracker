import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';

Future<void> dateSelector({required BuildContext context,required bool isApplied,bool? isEdit})async{
  DateTime selectedDate = DateTime.now();
  final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015 , 8), lastDate: DateTime(2090));
  if(picked != null){
    if(isApplied && isEdit == null){
      context.read<CreateBloc>().add(AppliedDateSelectedEvent(selectedDate: picked));
    }else{
      context.read<CreateBloc>().add(InterviewDateSelectedEvent(date: picked));
    }
    if(isApplied && isEdit != null && isEdit){
      print('editing apld');
      context.read<EditBloc>().add(EditSelectedAppliedDateEvent(date: picked));
    }
    
    selectedDate = picked;
  }
}