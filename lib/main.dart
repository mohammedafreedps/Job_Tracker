import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/createScreen/bloc/create_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/applied_bloc.dart';
import 'package:jobtracker/precentation/screens/initialScreen/initialScreenUI.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/edit_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/scheduledScreen/bloc/scheduled_bloc.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/stared_bloc.dart';
import 'package:jobtracker/utils/boxes.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(JobTrackModelAdapter());
  jobTrackerBox = await Hive.openBox<JobTrackModel>('jobTrackerBox');
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => JobTracker(),
    ));
}

class JobTracker extends StatelessWidget {
  const JobTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreateBloc>(create: (context)=> CreateBloc()),
        BlocProvider<AppliedBloc>(create: (context) => AppliedBloc()..add(SearchDataFromLocalDataBase(query: ''))),
        BlocProvider<StaredBloc>(create: (context)=> StaredBloc()..add(LoadAllStaredDataEvent(query: ''))),
        BlocProvider<ScheduledBloc>(create: (context)=> ScheduledBloc()..add(LoadScheduledListEvent(query: ''))),
        BlocProvider<JobDetailBloc>(create: (context)=> JobDetailBloc()),
        BlocProvider<EditBloc>(create: (context)=> EditBloc())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: InitialScreen(),
        ),
    );
  }
}