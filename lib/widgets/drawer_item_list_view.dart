import 'dart:developer';

import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item_widget.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  List<DrawerItemModel> drawerItems = [
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
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
                log("$selectedIndex");
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItemWidget(
              drawerItemModel: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
