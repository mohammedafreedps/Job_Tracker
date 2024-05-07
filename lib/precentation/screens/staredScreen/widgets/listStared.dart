import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/stared_bloc.dart';
import 'package:jobtracker/precentation/widgets/tiles.dart';

Widget listStared() {
  return Expanded(
    child: BlocBuilder<StaredBloc, StaredState>(
      builder: (context, state) {
        if(state is ShowStaredListState){
          return ListView.builder(
            itemCount: state.model.length,
            itemBuilder: (BuildContext context, int index) {
              return tiles(context: context,index: index,model: staredModelList[index],pageName: 'Stared');
            });
        }
        return Center(child: Text('Error'),);
      },
    ),
  );
}
