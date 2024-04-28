import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobtracker/precentation/widgets/tiles.dart';

Widget listApplied({required BuildContext context}){
  return Expanded(
    child: ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index){
      return tiles(context: context);
    }),
  );
}