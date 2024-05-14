import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/editScreen.dart';
import 'package:jobtracker/precentation/widgets/nothing.dart';
import 'package:jobtracker/utils/formators.dart';
import 'package:jobtracker/utils/pageNavigators.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget appliedDateTime({required List<JobTrackModel> model, required int index}) {
  return Column(
    children: [
      Column(
        children: [
          Row(
            children: [
              Text(
                'Applied Date:',
                style: TextStyles.normal,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                Formattors.dateFormator(model[index].applicationDate),
                style: TextStyles.normal.copyWith(),
              )
            ],
          )
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Applied Time:',
                    style: TextStyles.normal,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    Formattors.timeFormator(model[index].applicationTime),
                    style: TextStyles.normal.copyWith(),
                  ),
                ],
              ),
              BlocBuilder<JobDetailBloc, JobDetailState>(
                builder: (context, state) {
                  if(state is IsEditableState){
                    return enableEdit ? IconButton(
                      onPressed: () {
                        navigatePush(context: context, page: EditScreen(editPart: 'AppliedDateTime', modelList: model, index: index));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.secondaryColor,
                      )): nothing();
                  }
                  return nothing();
                },
              )
            ],
          )
        ],
      ),
    ],
  );
}
