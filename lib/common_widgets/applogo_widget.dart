import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget appLogoWidget() {
  return SizedBox(
      width: 150.w,
      height: 193.h,
      child: Image.asset(
        icAppLogo,
        fit: BoxFit.fill,
      ));
}
