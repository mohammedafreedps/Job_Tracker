import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/applied_bloc.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/scheduled_bloc.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/stared_bloc.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget cusTextField({required BuildContext context, required String lableText,TextEditingController? controller,required String pageName}){
  return SizedBox(
    height: 45,
    child: TextField(
      onChanged: (value){
        if(pageName == 'Applied'){
          context.read<AppliedBloc>().add(SearchDataFromLocalDataBase(query: value));
        }
        if(pageName == 'Stared'){
          context.read<StaredBloc>().add(LoadAllStaredDataEvent(query: value));
        }
        if(pageName == 'Scheduled'){
          context.read<ScheduledBloc>().add(LoadScheduledListEvent(query: value));
        }
      },
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),),
        filled: true,
        labelText: lableText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: AppColors.secondaryColor,
        
      ),
      style: TextStyles.normal.copyWith(color: AppColors.primaryColor,),
  ));
}