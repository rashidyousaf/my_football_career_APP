import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget profileWidget2(
    {firstIcon,
    secondIcond,
    thirdIcon,
    fourthIcon,
    String? firstName,
    String? secondName,
    String? thirdName,
    String? fourthName}) {
  return Column(children: [
    Row(
      children: [
        SizedBox(
          width: 10.w,
        ),
        // this section for shirt
        SizedBox(
          width: 130.w,
          height: 75.h,
          child: Stack(children: [
            SizedBox(
              height: 10.h,
            ),
            Positioned(
              left: 42.w,
              top: 10.h,
              child: Image.asset(
                firstIcon,
                width: 44.w,
                height: 45.h,
              ),
            ),
            Positioned(
              left: 49.w,
              top: 25.h,
              child: SizedBox(
                width: 30.w,
                child: Text(
                  firstName!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontFamily: semibold,
                  ),
                ),
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          color: greyColor,
          height: 56.h,
          width: 1.w,
        ),
        SizedBox(
          width: 10.w,
        ),
// this section for age
        SizedBox(
          width: 130.w,
          child: Column(children: [
            Image.asset(
              secondIcond,
              width: 25.w,
              height: 25.h,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              secondName!,
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: semibold,
              ),
            ),
          ]),
        ),
      ],
    ),
    // this section for horizintal lines
    SizedBox(
      height: 5.h,
    ),
    Row(
      children: [
        SizedBox(
          width: 15.w,
        ),
        Container(
          color: greyColor,
          width: 118.w,
          height: 1.h,
        ),
        SizedBox(
          width: 30.w,
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
          width: 10.w,
        ),
        // this section for for location
        SizedBox(
          width: 130.w,
          child: Column(children: [
            Image.asset(
              thirdIcon,
              width: 20.w,
              height: 22.h,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              thirdName!,
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: semibold,
              ),
            ),
          ]),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          color: greyColor,
          height: 56.h,
          width: 1.w,
        ),
        SizedBox(
          width: 10.w,
        ),
        // this section for last
        SizedBox(
          width: 130.w,
          child: Column(children: [
            Image.network(
              fourthIcon,
              width: 30.w,
              height: 30.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 130.w,
              child: Text(
                fourthName!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontFamily: semibold,
                ),
              ),
            ),
          ]),
        ),
      ],
    ),
  ]);
}
