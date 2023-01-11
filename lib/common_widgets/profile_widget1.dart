import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget profileWidget({iconShare, child, imgProfile, imgFlag, String? name}) {
  return Column(
    children: [
      SizedBox(
        height: 20.h,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 15.w,
          ),
          SizedBox(
            height: 30.h,
            width: 30.w,
            child: Icon(
              iconShare,
              color: greenColor,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          // profile widget

          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 110.h,
              width: 110.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                imgProfile,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 200.w,
              child: Center(
                child: Text(
                  name!,
                  style: TextStyle(
                      fontSize: 21.sp,
                      fontFamily: semibold,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          ]),

          SizedBox(
            height: 31.h,
            width: 52.w,
            child: Image.asset(
              imgFlag,
              width: 52.w,
              height: 32.h,
            ),
          ),
        ],
      ),
      Container(
        child: child,
      )
    ],
  );
}
