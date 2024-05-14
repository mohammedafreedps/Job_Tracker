import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/job_detail_bloc.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/bloc/localVariable.dart';
import 'package:jobtracker/precentation/screens/jobDetailScreen/widgets/editScreen.dart';
import 'package:jobtracker/precentation/widgets/nothing.dart';
import 'package:jobtracker/precentation/widgets/statusIndicator.dart';
import 'package:jobtracker/utils/pageNavigators.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget nameTitleStatus(
    {required BuildContext context,
    required List<JobTrackModel> model,
    required int index}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 230,
              child: Text(
                model[index].companyName,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.bold.copyWith(fontSize: 30),
              )),
          statusIndicator(
              context: context, status: model[index].applicationStatus),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            model[index].jobTitle,
            style: TextStyles.normal.copyWith(fontSize: 18),
          ),
          BlocBuilder<JobDetailBloc, JobDetailState>(
            builder: (context, state) {
              if(state is IsEditableState){
                return enableEdit ? IconButton(
                  onPressed: () {
                    editCompanyNameController.text = model[index].companyName;
                    editJobTitleController.text = model[index].jobTitle;
                    editedApplicationStatus = model[index].applicationStatus;
                    navigatePush(context: context, page: EditScreen(editPart: 'nameTitleStatus',modelList: model,index: index,));
                  },
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.secondaryColor,
                  )) : nothing();
              }
              return nothing();
            },
          ),
        ],
      ),
    ],
  );
}
