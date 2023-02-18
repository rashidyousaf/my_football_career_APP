import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/login/controller/login_controller.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/google_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/controller/player_controller.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/services/firestore_service.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                        // key: _formKey,
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
                        children: [
                          SizedBox(
                            width: 6.w,
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
                            width: 7.w,
                          ),
                          Text(
                            rememberMe,
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: whiteColor,
                              fontFamily: bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            forgetPass,
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: bold,
                                color: whiteColor,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        title: login,
                        onPress: () async {
                          // if (_formKey.currentState!.validate()) {}
                          // pC.getPlayer();
                          if (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            try {
                              await authService.signInWithEmailAndPassword(
                                emailController.text,
                                passwordController.text,
                                context,
                              );
                            } catch (e) {
                              Utils().toastMessage(e.toString());
                            }
                          } else {
                            Utils().toastMessage("Email and password required");
                          }

                          // playerController.getPlayer();
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
              height: 25.h,
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
