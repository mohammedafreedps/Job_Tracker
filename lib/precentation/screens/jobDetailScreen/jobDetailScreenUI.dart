import 'package:flutter/material.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              nameTitleStatus(context: context, model: modelList, index: index),
              divider(),
              appliedDateTime(),
              divider(),
              interviewDateTime(),
              divider(),
              jobDescription(),
              divider(),
              contacts(),
              divider(),
              notes(),
              divider(),
              SizedBox(height: 30,),
              appliedOn(),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}