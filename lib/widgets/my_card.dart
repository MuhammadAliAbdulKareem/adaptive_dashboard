import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/utils/assets_manager.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff4EB7F2),
          image: DecorationImage(
            image: AssetImage(AssetsManager.cardBackGround),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(top: 16.0, left: 32, right: 43),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(
                  color: Color(0xffFFFFFF),
                ),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(AssetsManager.gallery),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}
