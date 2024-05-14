import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget editSaveButton({Function? function}){
  return InkWell(
    onTap: (){
      if(function != null){
        function();
      }
    },
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: AppColors.secondaryColor),
      width: 150,
      height: 40,
      child: Center(child: Text('Save'),),
    ),
  );
}