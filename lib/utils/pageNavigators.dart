import 'package:flutter/material.dart';

void navigatePush({required BuildContext context, required Widget page}){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> page));
}