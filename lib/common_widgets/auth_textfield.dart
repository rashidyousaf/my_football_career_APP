import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class AuthTextfield extends StatelessWidget {
  final String? hintText;
  final controller;
  final Icon? icon;
  final bool obs;

  const AuthTextfield(
      {super.key, this.hintText, this.controller, this.icon, this.obs = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: ((value) {
      //   if (value!.isEmpty) {
      //     return ' Enter $hintText';
      //     return null;
      //   }
      // }),
      obscureText: obs,
      controller: controller,
      style: TextStyle(fontSize: 14.sp, color: titlegreyColor),
      cursorColor: greenColor,
      decoration: InputDecoration(
          errorStyle: TextStyle(
              fontSize: 12.sp, fontWeight: FontWeight.w600, color: Colors.red),
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
          filled: true,
          fillColor: whiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greenColor, width: 1.5.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greenColor, width: 1.5.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          suffixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: regular,
            fontSize: 14.sp,
            color: greenColor,
          )),
    );
  }
}
