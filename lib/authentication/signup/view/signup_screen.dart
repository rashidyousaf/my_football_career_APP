import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/auth_textfield.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/google_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/custom_container.dart';
import '../../login/controller/login_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  // final _formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);
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
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomContainer(
                borderColor: greenColor,
                backgroudColor: loginButtonColor,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 42.h,
                      ),
                      Form(
                        // key: _formKey1,
                        child: Column(
                          children: [
                            AuthTextfield(
                              controller: emailController,
                              hintText: email,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            AuthTextfield(
                              controller: passwordController,
                              hintText: password,
                              icon: Icon(
                                Icons.visibility_outlined,
                                color: greenColor,
                                size: 25.sp,
                              ),
                              obs: true,
                            ),
                          ],
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
                            child: Consumer<LoginController>(
                                builder: (context, state, _) {
                              return Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.r)),
                                  splashRadius: 10.r,
                                  checkColor: greenColor,
                                  activeColor: whiteColor,
                                  value: state.isChecked,
                                  side:
                                      BorderSide(color: whiteColor, width: 2.w),
                                  onChanged: (bool? value) {
                                    state.isChecked = value!;
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
                      Consumer<LoginController>(builder: (context, state, _) {
                        return CustomButton(
                            title: signup,
                            onPress: state.isChecked
                                ? () async {
                                    // if (_formKey1.currentState!.validate()) {}

                                    try {
                                      if (emailController.text.isNotEmpty &&
                                          passwordController.text.isNotEmpty) {
                                        await authService
                                            .createUserWithEmailAndPassword(
                                                emailController.text,
                                                passwordController.text,
                                                context);
                                      } else {
                                        Utils().toastMessage(
                                            "Email and password required");
                                      }
                                    } catch (e) {
                                      Utils().toastMessage(e.toString());
                                    }

                                    // Navigator.pushNamed(context, '/typescreen');
                                  }
                                : () {
                                    Utils().toastMessage(
                                        "Please accept Terms & Conditions");
                                  });
                      }),
                      SizedBox(
                        height: 28.h,
                      ),
                    ],
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
