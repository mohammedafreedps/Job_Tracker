import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget appliedOn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '-Linked In-',
        style: TextStyles.normal.copyWith(fontSize: 10),
      )
    ],
  );
}
