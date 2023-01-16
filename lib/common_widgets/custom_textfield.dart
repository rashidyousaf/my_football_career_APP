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
          style: TextStyle(
              fontFamily: regular, fontSize: 14.sp, color: titleColor)),
      SizedBox(
        height: 5.h,
      ),
      SizedBox(
        height: 45.h,
        child: TextFormField(
          style: TextStyle(
              color: blackTitle, fontSize: 15.sp, fontFamily: regular),
          cursorColor: greenColor,
          obscureText: isPass,
          controller: controller,
          autocorrect: false,
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
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 15.sp, color: hintColor),
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
