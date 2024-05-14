import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/widgets/nothing.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget jobDescription() {
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Job Description',
                style: TextStyles.normal.copyWith(fontSize: 15),
              )
            ],
          ),
          Text(
            'Descriptions ',
            style: TextStyles.normal.copyWith(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<JobDetailBloc, JobDetailState>(
                builder: (context, state) {
                  if(state is IsEditableState){
                    return enableEdit ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.secondaryColor,
                      )) : nothing();
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
