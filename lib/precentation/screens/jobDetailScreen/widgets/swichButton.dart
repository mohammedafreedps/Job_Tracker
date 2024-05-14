import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget swichButton({required Function function,required bool defaultValue}){
  return Switch(
    activeColor: AppColors.secondaryColor,
    inactiveThumbColor: AppColors.secondaryColor,
    activeTrackColor: AppColors.selectColor,
    inactiveTrackColor: AppColors.notSelectColor,
    value: defaultValue, onChanged: (value){
    function(value);
  });
}