import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget statusIndicator({required BuildContext context, required String status}){
  Color? _statusColor; 
  if(status == 'Applied'){
    _statusColor = Colors.green[200];
  }
  if(status == 'Rejected'){
    _statusColor = Colors.red[200];
  }
  if(status == 'Interview Scheduled'){
    _statusColor = Colors.blue[200];
  }
  

  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: _statusColor,
    ),
    child: Text(status , style: TextStyles.normalPri.copyWith(fontSize: 9),),
  );
}