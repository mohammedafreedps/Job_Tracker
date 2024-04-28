
import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/homeScreen/widgets/appliedSearchBar.dart';
import 'package:jobtracker/precentation/screens/homeScreen/widgets/listApplied.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/styleManager.dart';

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({super.key});

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
              Text('Applied',style: TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),),
              SizedBox(height: 15,),
              appliedSearchBar(context: context),
              SizedBox(height: 10,),
              divider(),
              SizedBox(height: 10),
              listApplied(context: context)
            ],
          ),
        ),
      ),
    );
  }
}