import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/widgets/nothing.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget interviewDateTime() {
  return Column(
    children: [
      Column(
        children: [
          Row(
            children: [
              Text(
                'Interview Date:',
                style: TextStyles.normal,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'May 22 2024',
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
                    'Interview Time:',
                    style: TextStyles.normal,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '12:30 AM',
                    style: TextStyles.normal.copyWith(),
                  ),
                ],
              ),
              BlocBuilder<JobDetailBloc, JobDetailState>(
                builder: (context, state) {
                  if(state is IsEditableState){
                    return enableEdit ?  IconButton(
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
