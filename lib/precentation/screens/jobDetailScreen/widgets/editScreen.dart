import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/createScreen/functions.dart';
import 'package:jobtracker/precentation/widgets/dateSelector.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dropDownButton.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/appbarWithButton.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/editSaveButton.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/editTextField.dart';
import 'package:jobtracker/precentation/widgets/button.dart';
import 'package:jobtracker/precentation/widgets/nothing.dart';
import 'package:jobtracker/precentation/widgets/timeSelector.dart';
import 'package:jobtracker/utils/formators.dart';
import 'package:jobtracker/utils/pageNavigators.dart';
import 'package:jobtracker/utils/popUpMenuItems.dart';
import 'package:jobtracker/utils/styleManager.dart';

class EditScreen extends StatelessWidget {
  final String editPart;
  final int index;
  final List<JobTrackModel> modelList;
  EditScreen(
      {super.key,
      required this.editPart,
      required this.modelList,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditBloc, EditState>(
      listener: (context, state) {
        if (state is DatasEdited) {
          editCompanyNameController.clear();
          editJobTitleController.clear();
          editedApplicationStatus = null;
          editAppliedDate = null;
          editAppliedTime = null;
          navigatePop(context: context);
        }
      },
      child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: appBarWithButton(),
          body: editPart == 'nameTitleStatus'
              ? ifNametitleStatus(context, index: index, model: modelList)
              : editPart == 'AppliedDateTime'
                  ? ifAppliedDateTime(
                      context: context, index: index, model: modelList)
                  : nothing()),
    );
  }
}

Widget ifNametitleStatus(BuildContext context,
    {required List<JobTrackModel> model, required int index}) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: SizedBox(
      height: 300,
      child: Column(
        children: [
          Text(
            'Company Name',
            style: TextStyles.normal,
          ),
          editTextField(controller: editCompanyNameController),
          Text(
            'Job Title',
            style: TextStyles.normal,
          ),
          editTextField(controller: editJobTitleController),
          Text(
            'Application Status',
            style: TextStyles.normal,
          ),
          BlocBuilder<EditBloc, EditState>(
            builder: (context, state) {
              return dropDownMenu(
                  context: context,
                  items: applicationStatuses,
                  title: editedApplicationStatus == null
                      ? 'Application Status'
                      : editedApplicationStatus!,
                  isJobType: false,
                  isEdit: true);
            },
          ),
          SizedBox(
            height: 30,
          ),
          editSaveButton(function: () {
            context
                .read<EditBloc>()
                .add(EditNameTitleStatusEvent(index: index, model: model));
          })
        ],
      ),
    ),
  );
}

Widget ifAppliedDateTime(
    {required BuildContext context,
    required List<JobTrackModel> model,
    required int index}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text(
          'Change Date',
          style: TextStyles.normal,
        ),
        BlocBuilder<EditBloc, EditState>(
          builder: (context, state) {
            return button(
                text: editAppliedDate == null
                    ? Formattors.dateFormator(
                        model[index].applicationDate,
                      )
                    : Formattors.dateFormator(editAppliedDate!),
                function: () {
                  dateSelector(context: context, isApplied: true, isEdit: true);
                });
          },
        ),
        Text(
          'Change Time',
          style: TextStyles.normal,
        ),
        BlocBuilder<EditBloc, EditState>(
          builder: (context, state) {
            return button(
                text: editAppliedTime == null ? Formattors.timeFormator(model[index].applicationTime): Formattors.timeFormator(CreateScreenFunctions.convertTimeOfDayToDateTime(timeOfDay: editAppliedTime!) ),
                function: () {
                  timeSelector(context: context, isApplied: true, isEdit: true);
                });
          },
        ),
        SizedBox(height: 20,),
        editSaveButton(function: (){
          context.read<EditBloc>().add(EditAppledDateTimeEvent(date: editAppliedDate!,index: index,model: model,time: CreateScreenFunctions.convertTimeOfDayToDateTime(timeOfDay: editAppliedTime!)));
        })
      ],
    ),
  );
}
