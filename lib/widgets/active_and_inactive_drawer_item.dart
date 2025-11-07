import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/app_styles.dart';
import '../models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0.0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.imgPath),
        title: Text(drawerItemModel.title),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0.0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.imgPath),
        title: Text(drawerItemModel.title, style: AppStyles.styleBold16),
        trailing: Container(color: Color(0xff4EB7F2), width: 3.27),
      ),
    );
  }
}
