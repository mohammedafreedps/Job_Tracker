import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/widgets/tiles.dart';

Widget listStared(){
  return Expanded(
    child: ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index){
      return tiles(context: context);
    }),
  );
}