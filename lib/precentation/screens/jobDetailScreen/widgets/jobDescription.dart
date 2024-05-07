import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget jobDescription() {
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Job Description',
                style: TextStyles.normal.copyWith(fontSize: 15),
              )
            ],
          ),
          Text(
            'Descriptions ',
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
      ),
    ],
  );
}
