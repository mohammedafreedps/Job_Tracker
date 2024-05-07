import 'package:flutter/material.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget contacts(){
  return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Contact',style: TextStyles.normal.copyWith(fontSize: 15),)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Name: ',style: TextStyles.normal.copyWith(fontSize: 14),),Text('Nano',style: TextStyles.normal.copyWith(fontSize: 14),)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Email: ',style: TextStyles.normal.copyWith(fontSize: 14),),Text('example@gmail.com',style: TextStyles.normal.copyWith(fontSize: 14),)
                    ],
                  ),
                  Row(
                    children: [
                      Text('Phone: ',style: TextStyles.normal.copyWith(fontSize: 14),),Text('1234567890',style: TextStyles.normal.copyWith(fontSize: 14),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: AppColors.secondaryColor,))
                    ],
                  ),
                ],
              );
}