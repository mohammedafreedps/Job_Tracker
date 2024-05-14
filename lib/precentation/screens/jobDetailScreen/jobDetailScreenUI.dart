import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/appbarWithButton.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/appliedDateTime.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/appliedOn.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/contacts.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/interviewDateTime.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/jobDescription.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/nameTitleStatus.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/notes.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/styleManager.dart';

class JobDetailScreenUI extends StatelessWidget {
  final int index;
  final List<JobTrackModel> modelList;
  JobDetailScreenUI({super.key, required this.index, required this.modelList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: appBarWithButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BlocBuilder<EditBloc, EditState>(
            builder: (context, state) {
              return Column(
                children: [
                  nameTitleStatus(
                      context: context, model: modelList, index: index),
                  divider(),
                  appliedDateTime(model: modelList,index: index),
                  divider(),
                  interviewDateTime(),
                  divider(),
                  jobDescription(),
                  divider(),
                  contacts(),
                  divider(),
                  notes(),
                  divider(),
                  SizedBox(
                    height: 30,
                  ),
                  appliedOn(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
