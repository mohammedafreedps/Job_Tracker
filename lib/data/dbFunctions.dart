import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/utils/boxes.dart';

void putData(
    {required String companyName,
    required String jobTitle,
    required String jobDescription,
    required DateTime applicationDate,
    required DateTime applicationTime,
    required String applicationStatus,
    required String applicationMethod,
    required String type,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    DateTime? interviewDate,
    DateTime? interviewTime,
    String? notes,
    bool? isStared}) {
  jobTrackerBox.put(
      DateTime.now().toString(),
      JobTrackModel(
          companyName: companyName,
          jobTitle: jobTitle,
          jobDescription: jobDescription,
          applicationDate: applicationDate,
          applicationTime: applicationTime,
          applicationStatus: applicationStatus,
          applicationMethod: applicationMethod,
          type: type,
          contactName: contactName,
          contactEmail: contactEmail,
          contactPhone: contactPhone,
          interviewDate: interviewDate,
          interviewTime: interviewTime,
          notes: notes,
          isStared: isStared ?? false
          ));
}

List<JobTrackModel> getAllData(){
  List items = jobTrackerBox.values.toList();
  List<JobTrackModel>  jobModel = [];
  items.forEach((job) { 
    jobModel.add(job);
  });
  return jobModel;
}

void deleteDataAt({required int index}){
  jobTrackerBox.deleteAt(index);
}

void updateDataAt(
  {required int index,
    required String companyName,
    required String jobTitle,
    required String jobDescription,
    required DateTime applicationDate,
    required DateTime applicationTime,
    required String applicationStatus,
    required String applicationMethod,
    required String type,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    DateTime? interviewDate,
    DateTime? interviewTime,
    String? notes,
    bool? isStared}){
  JobTrackModel hold = jobTrackerBox.getAt(index); 
  hold.companyName = companyName;
  hold.jobTitle = jobTitle;
  hold.jobDescription = jobDescription;
  hold.applicationDate = applicationDate;
  hold.applicationTime = applicationTime;
  hold.applicationStatus = applicationStatus;
  hold.applicationMethod = applicationMethod;
  hold.type = type;
  hold.contactName = contactName;
  hold.contactEmail = contactEmail;
  hold.contactPhone = contactPhone;
  hold.interviewDate = interviewDate;
  hold.interviewTime = interviewTime;
  hold.notes = notes;
  jobTrackerBox.putAt(index, hold);
}

void addToStared({required int index, required bool isStared}){
  JobTrackModel hold = jobTrackerBox.getAt(index);
  hold.isStared = isStared;
  jobTrackerBox.putAt(index, hold);
}