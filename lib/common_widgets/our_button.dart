import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget ourButton({
  color,
  textColor,
  String? title,
  onPress,
}) {
  return SizedBox(
    width: double.maxFinite,
    height: 45.h,
    child: ElevatedButton(
        style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(greenshadowColor),
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    side: BorderSide(color: color)))),
        onPressed: onPress,
        child: Text(
          title!,
          style: TextStyle(
            color: textColor,
            fontSize: 15.sp,
            fontFamily: regular,
          ),
        )),
  );
}
