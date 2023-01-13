import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget bgWidget(
    {context, Widget? child, String? title, String? subtitle, icon}) {
  return SafeArea(
    child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 30.h, left: 30.w, right: 30.w),
        color: const Color(0xffecf7f0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    icBAck,
                    height: 29.h,
                    width: 29.w,
                  ),
                ),
                SizedBox(
                  width: 16.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(fontSize: 16.sp, fontFamily: regular),
                    ),
                    Text(
                      subtitle!,
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  icon,
                  color: greenColor,
                )
              ],
            ),
            child!,
          ],
        )),
  );
}
