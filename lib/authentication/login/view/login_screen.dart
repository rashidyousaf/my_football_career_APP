import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/view/signup_screen.dart';
import 'package:my_football_career/authentication/signup/view/type_screen.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/google_button.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool? isCheck = false;
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
                        customTextfield(
                            title: email,
                            hint: emailHint,
                            isPass: false,
                            titleColor: whiteColor,
                            bgColor: whiteColor,
                            hintColor: greenColor,
                            borderColor: greenColor),
                        SizedBox(
                          height: 12.h,
                        ),
                        customTextfield(
                          title: password,
                          hintColor: greenColor,
                          hint: passwordHint,
                          isPass: true,
                          titleColor: whiteColor,
                          bgColor: whiteColor,
                          borderColor: greenColor,
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: redColor,
                                activeColor: whiteColor,
                                value: isCheck,
                                onChanged: (newValue) {
                                  setState(() {
                                    isCheck = newValue;
                                  });
                                }),
                            SizedBox(
                              width: 7.w,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "I agree the",
                                        style: TextStyle(
                                          fontFamily: regular,
                                          color: whiteColor,
                                          fontSize: 10.sp,
                                        )),
                                    TextSpan(
                                        text: termAndCond,
                                        style: TextStyle(
                                          fontFamily: regular,
                                          color: whiteColor,
                                          fontSize: 10.sp,
                                        )),
                                    TextSpan(
                                        text: "&",
                                        style: TextStyle(
                                          fontFamily: regular,
                                          color: whiteColor,
                                          fontSize: 10.sp,
                                        )),
                                    TextSpan(
                                      text: privacyPolicy,
                                      style: TextStyle(
                                        fontFamily: regular,
                                        color: whiteColor,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                          title: login,
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
                  child: const Divider(
                    color: greenColor,
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
                  child: const Divider(
                    color: greenColor,
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
              height: 11.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                dontHaveAccount,
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
                  Navigator.pushNamed(context, '/signupscreen');
                },
                child: Text(
                  signup,
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
