import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/createInputFields.dart';

Widget textInputFields(){
  return Column(
    children: [
      createInputField(heading: 'Company Name (required)', height: 50,controller: companyNameController),
      createInputField(heading: 'Job Title (required)', height: 50,controller: jobTitleController),
      createInputField(heading: 'Job Description (required)', height: 300,controller: jobDescriptionController),
      createInputField(heading: 'Contact Name', height: 50,controller: contactNameController),
      createInputField(heading: 'Contact Email', height: 50,controller: contactEmailController),
      createInputField(heading: 'Contact Phone', height: 50,controller: contactPhoneController),
      createInputField(heading: 'Notes/Comments', height: 300,controller: notesController),
      createInputField(heading: 'Application Method (required)', height: 50,controller: applicationMethodController),
    ],
  );
}