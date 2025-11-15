import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_manager.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                imgPath: AssetsManager.avatar1,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 20.0)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    imgPath: AssetsManager.settings,
                    title: "Setting System",
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    imgPath: AssetsManager.logout,
                    title: "Logout Account",
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
