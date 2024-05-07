import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget notes() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Notes',
            style: TextStyles.normal.copyWith(fontSize: 15),
          )
        ],
      ),
      Text(
        'Notss',
        style: TextStyles.normal.copyWith(fontSize: 14),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: AppColors.secondaryColor,
              ))
        ],
      )
    ],
  );
}
