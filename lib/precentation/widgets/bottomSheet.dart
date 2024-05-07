import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

PersistentBottomSheetController bottomSheet(BuildContext context,{required String message}){
  return showBottomSheet(context: context, builder: (BuildContext context){
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.all(10),
      child: Text(message,style: TextStyles.normal,),
    );
  });
}