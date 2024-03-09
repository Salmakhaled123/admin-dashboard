import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/views/widgets/active_and_inactive_item.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar4,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(
                  child: SizedBox(
                height: 20,
              )),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                title: 'Setting system',
                image: Assets.imagesSetting2,
              )),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                title: 'Logout account',
                image: Assets.imagesLogout,
              )),
              SizedBox(height: 48),
            ]),
          )
        ],
      ),
    );
  }
}
