import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget loginContainer({Widget? child, borderColor, backgroudColor}) {
  return Container(
    decoration: BoxDecoration(
        color: backgroudColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(21.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ]),
    child: child,
  );
}
