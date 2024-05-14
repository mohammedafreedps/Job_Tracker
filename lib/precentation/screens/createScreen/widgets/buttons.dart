import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:jobtracker/precentation/screens/createScreen/functions.dart';
import 'package:jobtracker/precentation/widgets/dateSelector.dart';
import 'package:jobtracker/precentation/widgets/timeSelector.dart';
import 'package:jobtracker/precentation/widgets/button.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/formators.dart';

Widget buttons (BuildContext context){
  return Column(
    children: [
      BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return button(
                      text: appliedDate == null
                          ? 'Applied Date'
                          : Formattors.dateFormator(appliedDate!),
                      function: () {
                        dateSelector(context: context, isApplied: true);
                      });
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return button(text: appliedTime == null ? 'Applied Time': Formattors.timeFormator(appliedTime!),function: (){timeSelector(context: context,isApplied: true);});
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return applicationStatus != null &&
                          applicationStatus == 'Interview Scheduled'
                      ? Column(children: [
                          button(text: interviewDate == null? 'Interview Date': Formattors.dateFormator(interviewDate!),function: (){dateSelector(context: context, isApplied: false);}),
                          const SizedBox(
                            height: 15,
                          ),
                          button(text: interviewTime == null ? 'Interview Time' : Formattors.timeFormator(interviewTime!),function: (){timeSelector(context: context, isApplied: false);})
                        ])
                      : Container(height: 0,);
                },
              ),
              divider(),
              const SizedBox(
                height: 20,
              ),
              button(text: 'Save',function: (){
                CreateScreenFunctions.saveData(context);
              }),
              const SizedBox(
                height: 20,
              ),
    ],
  );
}