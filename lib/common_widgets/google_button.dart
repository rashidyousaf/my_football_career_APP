import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget googleButton({
  color,
  textColor,
  String? title,
  onPress,
}) {
  return SizedBox(
    width: 315.w,
    height: 40.h,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPress,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            icGoogle,
            height: 18,
            width: 18,
          ),
          SizedBox(
            width: 9.8.w,
          ),
          Text(
            title!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ])),
  );
}
