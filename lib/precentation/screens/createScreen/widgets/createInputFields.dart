import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobtracker/precentation/widgets/inputTextField.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget createInputField({required String heading,required double height, required TextEditingController controller}){
  return Column(
    children: [
      SizedBox(height: 15,),
      Text(heading.replaceAll('(required)', ''),style: TextStyles.normal,),
      inputTextFiled(lableText: heading,height: height,controller: controller),
    ],
  );
}