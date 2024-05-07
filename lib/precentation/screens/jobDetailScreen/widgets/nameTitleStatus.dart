import 'package:flutter/material.dart';
import 'package:jobtracker/data/model/jobTrackModel.dart';
import 'package:jobtracker/precentation/widgets/statusIndicator.dart';
import 'package:jobtracker/utils/styleManager.dart';

Widget nameTitleStatus({required BuildContext context, required List<JobTrackModel> model,required int index}) {
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
    ],
  );
}
