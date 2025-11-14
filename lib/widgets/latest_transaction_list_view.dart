import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../core/utils/assets_manager.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> usersInfo = [
    UserInfoModel(
      imgPath: AssetsManager.avatar2,
      title: "Lekan Okeowo",
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      imgPath: AssetsManager.avatar3,
      title: "Josua Nunito",
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      imgPath: AssetsManager.avatar2,
      title: "Lekan Okeowo",
      subTitle: 'demo@gmail.com',
    ),
    UserInfoModel(
      imgPath: AssetsManager.avatar3,
      title: "Josua Nunito",
      subTitle: 'Josh Nunito@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse, // Enable mouse drag
          PointerDeviceKind.trackpad,
        },
      ),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: usersInfo.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: usersInfo[index]),
          ),
        ),
      ),
    );
  }
}
