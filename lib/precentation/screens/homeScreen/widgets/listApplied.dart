import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/applied_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/widgets/tiles.dart';

Widget listApplied({required BuildContext context}) {
  return Expanded(
    child: BlocBuilder<AppliedBloc, AppliedState>(
      builder: (context, state) {
        if(state is ShowAppliedList){
          print(state.jobTrackModelList.length);
          return ListView.builder(
            itemCount: state.jobTrackModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return tiles(context: context, model: appliedModelList[index],index: index,pageName: 'Applied');
            });
        }
        return Center(child: Text('Error'),);
      },
    ),
  );
}
