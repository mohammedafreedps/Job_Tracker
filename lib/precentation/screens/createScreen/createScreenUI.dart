import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/buttons.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/dropDownMenus.dart';
import 'package:jobtracker/precentation/screens/createScreen/widgets/textInputFields.dart';
import 'package:jobtracker/precentation/widgets/bottomSheet.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

class CreateScreenUI extends StatelessWidget {
  CreateScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: BlocListener<CreateBloc, CreateState>(
        listener: (context, state) {
          if(state is FillAllFieldNotifyState){
            bottomSheet(context, message: state.message);
          }
          if(state is SavedSuccusfullState){
            bottomSheet(context, message: 'Saved');
          }
        },
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Paddings.page),
          child: SizedBox(
            height: screenHeight(context),
            child: ListView(
              children: [
                Text(
                  'Create',
                  style:
                      TextStyles.bold.copyWith(fontSize: FontSizes.mainHeading),
                ),
                textInputFields(),
                dropDownMenus(context),
                buttons(context)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
