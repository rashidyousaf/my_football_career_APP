import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget customTextfield(
    {String? title,
    String? hint,
    controller,
    isPass,
    titleColor,
    hintColor,
    borderColor,
    bgColor,
    icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title!,
          style:
              TextStyle(fontFamily: bold, fontSize: 12.sp, color: titleColor)),
      SizedBox(
        height: 7.h,
      ),
      SizedBox(
        height: 45.h,
        child: TextFormField(
          obscureText: isPass,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: greenColor,
              size: 30,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            hintStyle: TextStyle(fontFamily: regular, color: hintColor),
            hintText: hint,
            isDense: true,
            fillColor: bgColor,
            filled: true,
          ),
        ),
      ),
    ],
  );
}
