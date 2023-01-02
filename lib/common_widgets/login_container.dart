import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget loginContainer({Widget? child, borderColor, backgroudColor}) {
  return Container(
    decoration: BoxDecoration(
      color: backgroudColor,
      border: Border.all(color: borderColor),
      borderRadius: BorderRadius.circular(21.r),
    ),
    child: child,
  );
}
