import 'package:bloc/bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:meta/meta.dart';

part 'job_detail_event.dart';
part 'job_detail_state.dart';

class JobDetailBloc extends Bloc<JobDetailEvent, JobDetailState> {
  JobDetailBloc() : super(JobDetailInitial()) {
    on<JobDetailEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<EnableEditButtonClickedEvent>((event, emit) {
      enableEdit = event.isEditable;
      emit(IsEditableState());
    });

    
  }
}
