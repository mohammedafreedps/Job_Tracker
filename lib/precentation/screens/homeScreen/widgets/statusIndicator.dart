import 'package:flutter/material.dart';

Widget statusIndicator({required BuildContext context}){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue[200],
    ),
    width: 60,
    height: 25,
  );
}