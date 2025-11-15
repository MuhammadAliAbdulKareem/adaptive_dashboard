import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.imgPath,
    this.iconColor,
    this.iconBackgroundColor,
  });
  final String imgPath;
  final Color? iconColor, iconBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: iconBackgroundColor ?? const Color(0xffFAFAFA),
          radius: 30,
          child: SvgPicture.asset(
            imgPath,
            colorFilter: ColorFilter.mode(
              iconColor ?? const Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: iconColor ?? const Color(0xff064061),
        ),
      ],
    );
  }
}
