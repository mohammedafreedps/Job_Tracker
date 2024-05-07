import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/applied_bloc.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/stared_bloc.dart';
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
      body: BlocListener<AppliedBloc, AppliedState>(
        listener: (context, state) {
          if(state is ShowAppliedList){
            context.read<StaredBloc>().add(LoadAllStaredDataEvent(query: ''));
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Paddings.page),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stared',
                  style:
                      TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),
                ),
                SizedBox(
                  height: 15,
                ),
                cusTextField(context: context, lableText: 'Search',pageName: 'Stared'),
                SizedBox(
                  height: 10,
                ),
                divider(),
                SizedBox(height: 10),
                listStared()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
