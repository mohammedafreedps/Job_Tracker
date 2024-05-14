import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void navigatePush({required BuildContext context, required Widget page}){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> page));
}

void navigatePop({required BuildContext context}){
  Navigator.pop(context);
}