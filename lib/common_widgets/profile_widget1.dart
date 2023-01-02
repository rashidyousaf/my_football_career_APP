import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget profileWidget() {
  return Column(
    children: [
      SizedBox(
        height: 20.h,
      ),
      Row(
        children: [
          SizedBox(
            width: 23.w,
          ),
          const Icon(
            Icons.share,
            color: greenColor,
          ),
          const Spacer(),
          Image.asset(
            icPPFlag,
            width: 52.w,
            height: 32.h,
          ),
          SizedBox(
            width: 16.w,
          )
        ],
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 120.h,
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(
            icPPImg,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Leo Messi",
          style: TextStyle(
            fontSize: 21.sp,
            fontFamily: semibold,
          ),
        ),
      ]),
    ],
  );
}
