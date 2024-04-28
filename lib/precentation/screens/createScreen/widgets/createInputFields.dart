import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/widgets/inputTextField.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget createInputField({required String heading,required double height}){
  return Column(
    children: [
      SizedBox(height: 15,),
      Text(heading,style: TextStyles.normal,),
      inputTextFiled(lableText: heading,height: height),
    ],
  );
}