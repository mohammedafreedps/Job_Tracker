import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget button({required String text}){
  return GestureDetector(
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.secondaryColor
      ),
      child: Center(child: Text(text,style: TextStyles.normalPri,)),
    ),
  );
}