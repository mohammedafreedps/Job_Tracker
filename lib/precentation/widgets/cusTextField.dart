import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget cusTextField({required String lableText}){
  return SizedBox(
    height: 45,
    child: TextField(
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