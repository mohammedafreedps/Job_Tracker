import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget inputTextFiled({required String lableText, required double height}) {
  return SizedBox(
    height: height,
    child: TextField(
      expands: true,
      maxLines: null,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          labelText: lableText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: AppColors.secondaryColor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor),)),
      style: TextStyles.normal.copyWith(
        color: AppColors.primaryColor,
      ),
    ),
  );
}
