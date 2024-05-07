import 'package:bloc/bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/localVariable.dart';
import 'package:meta/meta.dart';

part 'scheduled_event.dart';
part 'scheduled_state.dart';

class ScheduledBloc extends Bloc<ScheduledEvent, ScheduledState> {
  ScheduledBloc() : super(ScheduledInitial()) {
    on<LoadScheduledListEvent>((event, emit) {
      if(event.query.isEmpty){
        scheduledModelList = allJobTrackModelList.where((element) => element.applicationStatus == 'Interview Scheduled').toList();
        emit(ShowScheduledListState(model: scheduledModelList));
      }else{
        final hold =  allJobTrackModelList.where((element) => element.applicationStatus == 'Interview Scheduled').toList();
        scheduledModelList = hold.where((element) => element.companyName.toLowerCase().contains(event.query.toLowerCase())).toList();
        emit(ShowScheduledListState(model: scheduledModelList));
      }
      
      
    });
  }
}
