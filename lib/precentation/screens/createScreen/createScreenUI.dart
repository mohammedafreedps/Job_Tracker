import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/createInputFields.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dropDownButton.dart';
import 'package:jobtracker/precentation/widgets/button.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

class CreateScreenUI extends StatelessWidget {
  final List<PopupMenuEntry> items = [
    PopupMenuItem(value: 'one', child: Text('one')),
    PopupMenuItem(value: 'two', child: Text('two')),
    PopupMenuItem(value: 'three', child: Text('three'))
  ];
  CreateScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Paddings.page),
        child: SizedBox(
          height: screenHeight(context),
          child: ListView(
            children: [
              Text('Create',style: TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),),
              createInputField(heading: 'Company Name', height: 50),
              createInputField(heading: 'Job Title', height: 50),
              createInputField(heading: 'Job Description', height: 300),
              createInputField(heading: 'Contact Name', height: 50),
              createInputField(heading: 'Contact Email', height: 50),
              createInputField(heading: 'Contact Phone', height: 50),
              createInputField(heading: 'Notes/Comments', height: 300),
              const SizedBox(height: 15,),
              dropDownMenu(items: items,title: 'Job Type'),
              const SizedBox(height: 15,),
              dropDownMenu(items: items,title: 'Application Status'),
              const SizedBox(height: 15,),
              button(text: 'Application Method'),
              const SizedBox(height: 15,),
              button(text: 'Applied Date'),
              const SizedBox(height: 15,),
              button(text: 'Interview Date'),
              divider(),
              const SizedBox(height: 20,),
              button(text: 'Save'),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      )),
    );
  }
}
