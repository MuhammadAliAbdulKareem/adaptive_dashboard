import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_manager.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            imgPath: AssetsManager.avatar1,
            title: "Lekan Okeowo",
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8.0),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
