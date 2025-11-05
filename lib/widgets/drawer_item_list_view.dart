import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item_widget.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", imgPath: AssetsManager.category),
    DrawerItemModel(
      title: "My Transaction",
      imgPath: AssetsManager.transactions,
    ),
    DrawerItemModel(title: "Statistics", imgPath: AssetsManager.statistics),
    DrawerItemModel(title: "Wallet Account", imgPath: AssetsManager.wallet),
    DrawerItemModel(
      title: "My Investments",
      imgPath: AssetsManager.investments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return DrawerItemWidget(drawerItemModel: drawerItems[index]);
      },
    );
  }
}
