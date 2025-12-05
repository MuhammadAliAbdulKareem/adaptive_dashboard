import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) => TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16(context) => TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium20(context) => TextStyle(
    color: const Color(0xffffffff),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleBold16(context) => TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleSemiBold16(context) => TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold20(context) => TextStyle(
    color: const Color(0xff064060),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold24(context) => TextStyle(
    color: const Color(0xff4eb7f2),
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold18(context) => TextStyle(
    color: const Color(0xffffffff),
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular12(context) => TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular14(context) => TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
