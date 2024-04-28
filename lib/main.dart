import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/initialScreen/initialScreenUI.dart';
import 'package:jobtracker/utils/boxes.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(jobTrackModelAdapter());
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: InitialScreen(),
    );
  }
}