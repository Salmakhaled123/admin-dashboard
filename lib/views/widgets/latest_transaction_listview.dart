import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../models/user_info_model.dart';
import '../../utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({Key? key}) : super(key: key);
  static const users = [
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar4,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: users
              .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(userInfoModel: e),
                  ))
              .toList(),
        ));
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: users[index]));
          }),
    );
  }
}
