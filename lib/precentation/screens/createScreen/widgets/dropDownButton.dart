import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget dropDownMenu({required BuildContext context, required List<PopupMenuEntry> items,required String title,required bool isJobType, bool? isEdit}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: AppColors.secondaryColor
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyles.normalPri,),
        PopupMenuButton(
          color: AppColors.secondaryColor,
          surfaceTintColor: AppColors.secondaryColor,
          icon: Icon(Icons.arrow_drop_down,color: AppColors.primaryColor,),
          onSelected: (value){
            if(isJobType == true ){
              type = value;
              context.read<CreateBloc>().add(JobTypeSelectedEvent(selectedJobType: value));
            }
            else{
              applicationState = value;
              context.read<CreateBloc>().add(ApplicationStatusSelectedEvent(selectedStatus: value));
            }
            if(isEdit != null && isEdit){
              context.read<EditBloc>().add(EditApplicationStatusEvent(selectedStatus: value));
            }
          },
          itemBuilder: (BuildContext context){
          return items;
        }),
      ],
    ),
  );
}