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
            width: 10.w,
          ),
          // profile widget

          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 110.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.network(
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontFamily: semibold,
                  ),
                ),
              ),
            ),
          ]),

          SizedBox(
            height: 35.h,
            width: 52.w,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                imgFlag,
              ),
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
