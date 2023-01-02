import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget ourButton({
  color,
  textColor,
  String? title,
  onPress,
}) {
  return SizedBox(
    width: 255.w,
    height: 45.h,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPress,
        child: Text(
          title!,
          style: TextStyle(
            color: textColor,
          ),
        )),
  );
}
