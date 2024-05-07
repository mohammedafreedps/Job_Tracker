import 'package:flutter/material.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/widgets/divider.dart';
import 'package:jobtracker/precentation/widgets/statusIndicator.dart';
import 'package:jobtracker/utils/styleManager.dart';

class JobDetailScreenUI extends StatelessWidget {
  final int index;
  final List<JobTrackModel> modelList;
  JobDetailScreenUI({super.key, required this.index, required this.modelList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 230,
                      child: Text(
                        modelList[index].companyName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.bold.copyWith(fontSize: 30),
                      )),
                  statusIndicator(
                      context: context,
                      status: modelList[index].applicationStatus),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutter developer',
                    style: TextStyles.normal.copyWith(fontSize: 18),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.secondaryColor,
                      )),
                ],
              ),
              divider(),
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
              divider(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Interview Date:',
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
                        'Interview Time:',
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
              divider(),
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
                  Text('Descriptions ',style: TextStyles.normal.copyWith(fontSize: 14),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: AppColors.secondaryColor,))
                    ],
                  )
                ],
              ),
              divider(),
              Column(
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
              ),
              divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Notes',style: TextStyles.normal.copyWith(fontSize: 15),)
                    ],
                  ),
                  Text('Notss',style: TextStyles.normal.copyWith(fontSize: 14),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: AppColors.secondaryColor,))],)
                ],
              ),
              divider(),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('-Linked In-',style: TextStyles.normal.copyWith(fontSize: 10),)],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
