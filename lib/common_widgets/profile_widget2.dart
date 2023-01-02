import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget profileWidget2() {
  return Column(children: [
    Row(
      children: [
        SizedBox(
          width: 60.w,
        ),
        Column(children: [
          Image.asset(
            icPPShirt,
            width: 44.w,
            height: 40.h,
          ),
          SizedBox(
            height: 9.h,
          ),
          const Text(
            "30",
            style: TextStyle(
              fontSize: 17,
              fontFamily: semibold,
            ),
          ),
        ]),
        SizedBox(
          width: 80.w,
        ),
        Container(
          color: greyColor,
          height: 56.h,
          width: 1.w,
        ),
        SizedBox(
          width: 59.w,
        ),
        Column(children: [
          Image.asset(
            icPPAge,
            width: 25.w,
            height: 25.h,
          ),
          SizedBox(
            height: 9.h,
          ),
          const Text(
            "35",
            style: TextStyle(
              fontSize: 17,
              fontFamily: semibold,
            ),
          ),
        ]),
      ],
    ),
    SizedBox(
      height: 15.h,
    ),
    Row(
      children: [
        SizedBox(
          width: 40.w,
        ),
        Container(
          color: greyColor,
          width: 118.w,
          height: 1.h,
        ),
        SizedBox(
          width: 50.w,
        ),
        Container(
          color: greyColor,
          width: 118.w,
          height: 1.h,
        ),
      ],
    ),
    SizedBox(
      height: 13.h,
    ),
    Row(
      children: [
        SizedBox(
          width: 67.w,
        ),
        Column(children: [
          Image.asset(
            icPPLocation,
            width: 20.w,
            height: 22.h,
          ),
          SizedBox(
            height: 9.h,
          ),
          const Text(
            "Paris",
            style: TextStyle(
              fontSize: 17,
              fontFamily: semibold,
            ),
          ),
        ]),
        SizedBox(
          width: 80.w,
        ),
        Container(
          color: greyColor,
          height: 56.h,
          width: 1.w,
        ),
        SizedBox(
          width: 59.w,
        ),
        Column(children: [
          Image.asset(
            icPPParis,
            width: 25.w,
            height: 25.h,
          ),
          SizedBox(
            height: 9.h,
          ),
          const Text(
            "PSG",
            style: TextStyle(
              fontSize: 17,
              fontFamily: semibold,
            ),
          ),
        ]),
      ],
    ),
  ]);
}
