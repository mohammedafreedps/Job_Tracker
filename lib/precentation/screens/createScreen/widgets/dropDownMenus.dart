import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/localVariables.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dropDownButton.dart';
import 'package:jobtracker/utils/popUpMenuItems.dart';

Widget dropDownMenus(BuildContext context){
  return Column(
    children: [
      const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return dropDownMenu(
                      context: context,
                      items: jobTypes,
                      title: jobType == null ? 'Job Type' : jobType!,
                      isJobType: true);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<CreateBloc, CreateState>(
                builder: (context, state) {
                  return dropDownMenu(
                      context: context,
                      items: applicationStatuses,
                      title: applicationStatus == null
                          ? 'Application Status'
                          : applicationStatus!,
                      isJobType: false);
                },
              ),
              const SizedBox(
                height: 15,
              ),
    ],
  );
}