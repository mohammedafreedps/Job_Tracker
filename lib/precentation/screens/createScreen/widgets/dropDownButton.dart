import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget dropDownMenu({required List<PopupMenuEntry> items,required String title}){
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
            print(value);
          },
          itemBuilder: (BuildContext context){
          return items;
        }),
      ],
    ),
  );
}