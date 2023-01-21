import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, this.controller, this.hint, this.icon, this.title});
  final String? title;
  final String? hint;
  final controller;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,
            style: TextStyle(
                fontFamily: regular, fontSize: 14.sp, color: titlegreyColor)),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 45.h,
          child: TextFormField(
            style: TextStyle(
                color: blackTitle, fontSize: 15.sp, fontFamily: regular),
            cursorColor: greenColor,
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
                  color: greyColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.r),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: hintgreyColor),
              hintText: hint,
              isDense: true,
              fillColor: greyColor,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
