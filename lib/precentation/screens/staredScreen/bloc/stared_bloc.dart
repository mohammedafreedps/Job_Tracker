import 'package:bloc/bloc.dart';
import 'package:jobtracker/data/dbFunctions.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/localVariable.dart';
import 'package:meta/meta.dart';

part 'stared_event.dart';
part 'stared_state.dart';

class StaredBloc extends Bloc<StaredEvent, StaredState> {
  StaredBloc() : super(StaredInitial()) {
    on<LoadAllStaredDataEvent>((event, emit) {
      if(event.query.isEmpty){
        staredModelList = allJobTrackModelList.where((element) => element.isStared == true).toList();
        emit(ShowStaredListState(model: staredModelList));
      }else{
        final hold = allJobTrackModelList.where((element) => element.isStared == true).toList();
        staredModelList = hold.where((element) => element.companyName.toLowerCase().contains(event.query.toLowerCase())).toList();
        emit(ShowStaredListState(model: staredModelList));
      }
    });

    on<StaredButtonClickedEvent>((event, emit) {
      int correctIndex = 0;
      for(int i = 0; i<staredModelList.length; i++){
        correctIndex = allJobTrackModelList.indexWhere((element) => element.companyName == event.companyName);
      }
      addToStared(index: correctIndex, isStared: !allJobTrackModelList[correctIndex].isStared);
      allJobTrackModelList = getAllData();
      staredModelList = allJobTrackModelList.where((element) => element.isStared == true).toList();
      emit(ShowStaredListState(model: staredModelList));
    });
  }
}
