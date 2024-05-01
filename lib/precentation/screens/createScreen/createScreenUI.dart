import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:jobtracker/precentation/screens/createScreen/functions.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dateSelector.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/textInputFields.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/timeSelector.dart';
import 'package:jobtracker/utils/popUpMenuItems.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/createInputFields.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dropDownButton.dart';
import 'package:jobtracker/precentation/widgets/button.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

class CreateScreenUI extends StatelessWidget {
  CreateScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddings.page),
        child: SizedBox(
          height: screenHeight(context),
          child: ListView(
            children: [
              Text(
                'Create',
                style:
                    TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),
              ),
              textInputFields(),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return dropDownMenu(
                      context: context,
                      items: jobTypes,
                      title: jobType == null ? 'Job Type' : jobType!,
                      isJobType: true);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return dropDownMenu(
                      context: context,
                      items: applicationStatuses,
                      title: applicationStatus == null
                          ? 'Application Status'
                          : applicationStatus!,
                      isJobType: false);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return button(
                      text: appliedDate == null
                          ? 'Applied Date'
                          : CreateScreenFunctions.dateFormator(appliedDate!),
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
                  return button(text: appliedTime == null ? 'Applied Time': CreateScreenFunctions.timeFormator(appliedTime!),function: (){timeSelector(context: context,isApplied: true);});
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
                          button(text: interviewDate == null? 'Interview Date': CreateScreenFunctions.dateFormator(interviewDate!),function: (){dateSelector(context: context, isApplied: false);}),
                          const SizedBox(
                            height: 15,
                          ),
                          button(text: interviewTime == null ? 'Interview Time' : CreateScreenFunctions.timeFormator(interviewTime!),function: (){timeSelector(context: context, isApplied: false);})
                        ])
                      : Container(height: 0,);
                },
              ),
              divider(),
              const SizedBox(
                height: 20,
              ),
              button(text: 'Save'),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
