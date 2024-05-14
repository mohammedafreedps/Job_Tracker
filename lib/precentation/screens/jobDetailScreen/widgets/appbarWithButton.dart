import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/swichButton.dart';
import 'package:jobtracker/utils/styleManager.dart';

PreferredSizeWidget appBarWithButton() {
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    iconTheme: IconThemeData(color: AppColors.secondaryColor),
    actions: [
      Row(
        children: [
          Text(
            'enable Edit',
            style: TextStyles.normal.copyWith(fontSize: 10),
          ),
          BlocBuilder<JobDetailBloc, JobDetailState>(
            builder: (context, state) {
              if(state is IsEditableState){
                return swichButton(function: (value){
                  context.read<JobDetailBloc>().add(EnableEditButtonClickedEvent(isEditable: value));
                }, defaultValue: enableEdit);
              }
              return swichButton(function: (value){
                context.read<JobDetailBloc>().add(EnableEditButtonClickedEvent(isEditable: value));
              }, defaultValue: enableEdit);
            },
          ),
        ],
      )
    ],
  );
}
