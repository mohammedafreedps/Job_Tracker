import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/scheduled_bloc.dart';
import 'package:jobtracker/precentation/widgets/tiles.dart';

Widget listScheduled({required BuildContext context}) {
  return Expanded(
    child: BlocBuilder<ScheduledBloc, ScheduledState>(
      builder: (context, state) {
        if(state is ShowScheduledListState){
          return ListView.builder(
            itemCount: state.model.length,
            itemBuilder: (BuildContext context, int index) {
              return tiles(context: context,model: scheduledModelList[index],index: index, pageName: 'Scheduled');
            });
        }
        return Center(child: Text('Error'),);
      },
    ),
  );
}
