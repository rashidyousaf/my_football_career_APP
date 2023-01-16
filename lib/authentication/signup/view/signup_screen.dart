import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/google_button.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: bgLogin(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 64.h,
            ),
            appLogoWidget(),
            SizedBox(
              height: 75.h,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: loginContainer(
                borderColor: greenColor,
                backgroudColor: loginButtonColor,
                child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 42.h,
                        ),

                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: whiteColor,
                        //       border: Border.all(color: greenColor),
                        //       borderRadius: BorderRadius.circular(9.r),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: Colors.grey.withOpacity(0.1),
                        //           spreadRadius: 5,
                        //           blurRadius: 7,
                        //           offset: const Offset(
                        //               0, 3), // changes position of shadow
                        //         ),
                        //       ]),
                        //   alignment: Alignment.center,
                        //   height: 60.h,
                        //   child: TextField(
                        //     decoration: InputDecoration(
                        //       border: InputBorder.none,
                        //       filled: true,
                        //       fillColor: whiteColor,
                        //       labelStyle:
                        //           TextStyle(color: greenColor, fontSize: 12.sp),
                        //       labelText: email,
                        //     ),
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: greenColor, width: 1.5.w),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 14.sp, color: titlegreyColor),
                            cursorColor: greenColor,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: email,
                                hintStyle: TextStyle(
                                  fontFamily: regular,
                                  fontSize: 14.sp,
                                  color: greenColor,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: greenColor, width: 1.5.w),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 14.sp, color: titlegreyColor),
                            cursorColor: greenColor,
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility_outlined,
                                  color: greenColor,
                                  size: 25.sp,
                                ),
                                border: InputBorder.none,
                                hintText: password,
                                hintStyle: TextStyle(
                                  fontFamily: regular,
                                  fontSize: 14.sp,
                                  color: greenColor,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            SizedBox(
                              width: 12.w,
                              height: 12.h,
                              child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.r)),
                                  splashRadius: 10.r,
                                  checkColor: greenColor,
                                  activeColor: whiteColor,
                                  value: isCheck,
                                  side:
                                      BorderSide(color: whiteColor, width: 2.w),
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isCheck = newValue;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            SizedBox(
                              width: 200.w,
                              height: 43.h,
                              child: Text(
                                  "By signing up you to our Terms of services and Privacy Policy, and confirm that you are at least 18 years old.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    letterSpacing: 0.5.sp,
                                    fontFamily: bold,
                                    height: 1,
                                    color: whiteColor,
                                    fontSize: 10.sp,
                                  )),
                            ),
                            SizedBox(
                              width: 15.w,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ourButton(
                          color: greenColor,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {
                            Navigator.pushNamed(context, '/typescreen');
                          },
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 139.w,
                  child: Divider(
                    color: whiteColor.withOpacity(0.6),
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Text(
                  "Or",
                  style: TextStyle(color: whiteColor, fontSize: 15.sp),
                ),
                SizedBox(
                  width: 9.w,
                ),
                SizedBox(
                  width: 139.w,
                  child: Divider(
                    color: whiteColor.withOpacity(0.6),
                    thickness: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            googleButton(
                color: redColor,
                textColor: whiteColor,
                title: connectWithGoogle,
                onPress: () {}),
            SizedBox(
              height: 20.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                alreadyHaveAccount,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: whiteColor,
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/loginscreen');
                },
                child: Text(
                  login,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: bold,
                    color: greenColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ])
          ],
        ),
      )),
    );
  }
}
