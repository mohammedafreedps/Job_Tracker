import 'package:bloc/bloc.dart';
import 'package:jobtracker/data/dbFunctions.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:meta/meta.dart';

part 'applied_event.dart';
part 'applied_state.dart';

class AppliedBloc extends Bloc<AppliedEvent, AppliedState> {
  AppliedBloc() : super(AppliedInitial()) {
    on<SearchDataFromLocalDataBase>((event, emit) {
      allJobTrackModelList = getAllData();
      if(event.query.isEmpty){
        emit(ShowAppliedList(jobTrackModelList: allJobTrackModelList));
      }
      appliedModelList = allJobTrackModelList.where((element) => element.companyName.toLowerCase().contains(event.query.toLowerCase())).toList();
      emit(ShowAppliedList(jobTrackModelList: appliedModelList));
    });

    on<StarButtonClickedEvent>((event, emit) {
      int correctIndex = 0;
      for(int i = 0; i<appliedModelList.length; i++){
        correctIndex = allJobTrackModelList.indexWhere((element) => element.companyName == event.companyName);
      }
      addToStared(index: correctIndex, isStared: !allJobTrackModelList[correctIndex].isStared);
      emit(ShowAppliedList(jobTrackModelList: appliedModelList));
    });
  }
}
