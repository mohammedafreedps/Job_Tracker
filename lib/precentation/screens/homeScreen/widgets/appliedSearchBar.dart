import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/widgets/cusTextField.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget appliedSearchBar({required BuildContext context}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(width: screenWidth(context)-69,child: cusTextField(lableText: 'Search')),
    IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt,color: AppColors.secondaryColor,))],
  );
}