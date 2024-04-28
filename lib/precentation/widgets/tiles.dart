import 'package:flutter/material.dart';
import 'package:jobtracker/precentation/screens/homeScreen/widgets/statusIndicator.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget tiles({required BuildContext context}){
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.secondaryColor
      ),
      padding: EdgeInsets.all(10),
      width: screenWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('May 23, 9:00 AM',style: TextStyles.normalPri.copyWith(fontSize: 10),),
              statusIndicator(context: context),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Company Name',style: TextStyles.boldPri.copyWith(fontSize: 25),),
              Text('Flutter developer',style: TextStyles.normalPri.copyWith(fontSize: 15),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Remote',style: TextStyles.normalPri.copyWith(fontSize: 10),),
              Text('Linked In',style: TextStyles.normalPri.copyWith(fontSize: 10),),
              IconButton(onPressed: (){}, icon: Icon(Icons.star,color: AppColors.primaryColor,))
            ],
          )
        ],
      ),
    ),
  );
}