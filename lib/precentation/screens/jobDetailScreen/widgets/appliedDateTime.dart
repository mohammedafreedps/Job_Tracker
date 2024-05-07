import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget appliedDateTime() {
  return Column(
    children: [
      Column(
        children: [
          Row(
            children: [
              Text(
                'Applied Date:',
                style: TextStyles.normal,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'May 22 2024',
                style: TextStyles.normal.copyWith(),
              )
            ],
          )
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Applied Time:',
                    style: TextStyles.normal,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '12:30 AM',
                    style: TextStyles.normal.copyWith(),
                  ),
                ],
              ),
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