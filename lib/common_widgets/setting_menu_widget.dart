import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget settingmenuWidget(
    {required String title,
    required String imgPath,
    required Function onTap,
    bool show = true,
    Color textColor = Colors.black}) {
  return GestureDetector(
    onTap: onTap(),
    child: SizedBox(
      height: 55.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Row(
              children: [
                SizedBox(
                  width: 22.w,
                ),
                Image.asset(
                  imgPath,
                  width: 21.w,
                  height: 21.h,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 15.sp, fontFamily: regular, color: textColor),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: greenColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 20.w,
                )
              ],
            ),
          ),

          // second section
          Visibility(
            visible: show,
            child: Divider(
              indent: 20.w,
              endIndent: 20.w,
              height: 1.h,
            ),
          ),
        ],
      ),
    ),
  );
}
