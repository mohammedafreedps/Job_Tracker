import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/applied_bloc.dart';
import 'package:jobtracker/precentation/screens/homeScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/jobDetailScreenUI.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/staredScreen/bloc/stared_bloc.dart';
import 'package:jobtracker/precentation/widgets/statusIndicator.dart';
import 'package:jobtracker/utils/formators.dart';
import 'package:jobtracker/utils/pageNavigators.dart';
import 'package:jobtracker/utils/screenSizeHelper.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget tiles({required BuildContext context, required JobTrackModel model,required int index,required String pageName}){
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: GestureDetector(
      onTap: (){
        if(pageName == 'Applied'){
          navigatePush(context: context, page: JobDetailScreenUI(index: index, modelList: appliedModelList));
        }
      },
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
                Text(Formattors.dateFormator(model.applicationDate) + ' . ' + Formattors.timeFormator(model.applicationTime) ,style: TextStyles.normalPri.copyWith(fontSize: 10),),
                statusIndicator(context: context,status: model.applicationStatus),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.companyName,style: TextStyles.boldPri.copyWith(fontSize: 25),),
                Text(model.jobTitle,style: TextStyles.normalPri.copyWith(fontSize: 15),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(model.type,style: TextStyles.normalPri.copyWith(fontSize: 10),),
                Text(model.applicationMethod,style: TextStyles.normalPri.copyWith(fontSize: 10),),
                pageName != 'Scheduled'? IconButton(onPressed: (){
                  if(pageName == 'Applied'){
                    print('if Applied');
                    context.read<AppliedBloc>().add(StarButtonClickedEvent(companyName: appliedModelList[index].companyName));
                  }
                  if(pageName == 'Stared'){
                    print('if stared');
                    context.read<StaredBloc>().add(StaredButtonClickedEvent(companyName: staredModelList[index].companyName));
                  }
                }, icon: Icon(Icons.star,color: 
                model.isStared ? 
                 AppColors.primaryColor:  AppColors.notSelectColor,)): Text('')
              ],
            )
          ],
        ),
      ),
    ),
  );
}