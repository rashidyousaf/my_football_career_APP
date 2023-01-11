import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget playerOfferContainer(
    {icon1,
    icon2,
    icon3,
    icon4,
    flag,
    flag1,
    String? text1,
    String? text2,
    String? text3,
    String? text4}) {
  return Padding(
    padding: EdgeInsets.only(left: 13.w, top: 19.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 26.w,
                  height: 24.h,
                  child: Image.asset(
                    icon1,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 17.w,
                ),
                SizedBox(
                  width: 160.w,
                  child: Text(
                    text1!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                )
              ],
            ),
            // second row
            SizedBox(
              height: 14.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 26.w,
                  height: 24.h,
                  child: Image.asset(
                    icon2,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 17.w,
                ),
                SizedBox(
                  width: 160.w,
                  child: Text(
                    text2!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                )
              ],
            ),
            // third row
            SizedBox(
              height: 14.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 26.w,
                  height: 24.h,
                  child: Image.asset(
                    icon3,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 17.w,
                ),
                SizedBox(
                  width: 160.w,
                  child: Text(
                    text3!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                )
              ],
            ),
            // forth row
            SizedBox(
              height: 14.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 26.w,
                  height: 24.h,
                  child: Image.asset(
                    icon4,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 17.w,
                ),
                SizedBox(
                  width: 160.w,
                  child: Text(
                    text4!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),

        // this column for flags
        Column(
          children: [
            SizedBox(
              width: 68.w,
              height: 50.h,
              child: Image.asset(
                flag,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 60.w,
              height: 60.h,
              child: Image.asset(
                flag1,
                fit: BoxFit.fill,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
