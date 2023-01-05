import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget contactWidget() {
  return Column(
    children: [
      SizedBox(
        height: 15.h,
      ),
      Row(
        children: [
          SizedBox(
            width: 21.w,
          ),
          Image.asset(
            icPPEmail,
            width: 28.w,
            height: 19.50.h,
          ),
          SizedBox(
            width: 13.w,
          ),
          Text(
            leomessimail,
            style: TextStyle(fontSize: 13.sp, fontFamily: regular),
          )
        ],
      ),
      SizedBox(
        height: 15.h,
      ),
      const Divider(
        thickness: 1,
        indent: 30,
        endIndent: 30,
        color: greyColor,
      ),
      SizedBox(
        height: 15.h,
      ),
      Row(
        children: [
          SizedBox(
            width: 21.w,
          ),
          Image.asset(
            icPPPhone,
            width: 28.w,
            height: 19.50.h,
          ),
          SizedBox(
            width: 13.w,
          ),
          Text(
            leomessinumber,
            style: TextStyle(fontSize: 13.sp, fontFamily: regular),
          )
        ],
      ),
      SizedBox(
        height: 14.h,
      ),
    ],
  );
}
