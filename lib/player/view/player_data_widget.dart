import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget playerdataWidget() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image.asset(
            icPPGroundImg,
            width: 146.w,
            height: 179.h,
          ),
          SizedBox(
            height: 9.h,
          ),
          Text(
            availableTransfer,
            style: TextStyle(
              fontSize: 9.sp,
            ),
          ),
          Image.asset(
            icPPTick2,
            width: 18.w,
            height: 18.h,
          )
        ],
      ),
      SizedBox(
        width: 11.w,
      ),
      Column(
        children: [
          Text(position,
              style: TextStyle(
                color: const Color.fromARGB(255, 54, 53, 53),
                fontSize: 12.sp,
              )),
          Text(rightWinger,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
              )),
          Text(or,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              )),
          Text(attackingMidfielder,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
              )),
          SizedBox(
            height: 36.h,
          ),
          Row(
            children: [
              Image.asset(
                icPPWeight,
                width: 25.w,
                height: 22.h,
              ),
              SizedBox(
                width: 29.w,
              ),
              Image.asset(
                icPPHeight,
                width: 21.w,
                height: 25.h,
              ),
              SizedBox(
                width: 36.w,
              ),
              Image.asset(
                icPPFeet,
                width: 17.w,
                height: 26.h,
              )
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                "70",
                style: TextStyle(fontSize: 14.sp, fontFamily: regular),
              ),
              SizedBox(
                width: 34.w,
              ),
              Text(
                "174",
                style: TextStyle(fontSize: 14.sp, fontFamily: regular),
              ),
              SizedBox(
                width: 25.w,
              ),
              Text(
                left,
                style: TextStyle(fontSize: 14.sp, fontFamily: regular),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(underContractUntil,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              )),
          Text(underContractUntilBelow,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
              )),
        ],
      ),
    ],
  );
}