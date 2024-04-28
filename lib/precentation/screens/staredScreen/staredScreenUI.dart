import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/staredScreen/widgets/listStared.dart';
import 'package:jobtracker/precentation/widgets/cusTextField.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/styleManager.dart';

class StaredScreenUI extends StatelessWidget {
  const StaredScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Paddings.page),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stared',style: TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),),
              SizedBox(height: 15,),
              cusTextField(lableText: 'Search'),
              SizedBox(height: 10,),
              divider(),
              SizedBox(height: 10),
              listStared()
            ],
          ),
        ),
      ),
    );
  }
}