import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/scheduled_bloc.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/widgets/listScheduled.dart';
import 'package:jobtracker/precentation/widgets/cusTextField.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/utils/styleManager.dart';

class ScheduledScreenUI extends StatelessWidget {
  const ScheduledScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditBloc, EditState>(
      listener: (context, state) {
        if(state is DatasEdited){
          context.read<ScheduledBloc>().add(LoadScheduledListEvent(query: ''));
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Paddings.page),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Scheduled',
                  style:
                      TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),
                ),
                SizedBox(
                  height: 15,
                ),
                cusTextField(
                    context: context,
                    lableText: 'Search',
                    pageName: 'Scheduled'),
                SizedBox(
                  height: 10,
                ),
                divider(),
                SizedBox(height: 10),
                listScheduled(context: context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
