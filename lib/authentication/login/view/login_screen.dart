import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/login/controller/login_controller.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/country_code_widget.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/google_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/auth_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    // Set the email and password fields based on the value of the
    // rememberMe property in the AuthProvider.
    final provider = Provider.of<LoginController>(context, listen: false);

    setState(() {
      provider.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final provider = Provider.of<LoginController>(context);
    _emailController.text = provider.email;
    _passwordController.text = provider.password;

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
                    child: Consumer<LoginController>(
                        builder: (context, provider, _) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 42.h,
                          ),
                          Form(
                            // key: _formKey,
                            child: Column(
                              children: [
                                AuthTextfield(
                                  controller: _emailController,
                                  hintText: email,
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                AuthTextfield(
                                  controller: _passwordController,
                                  hintText: password,
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
                                  child: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.r)),
                                    splashRadius: 10.r,
                                    checkColor: greenColor,
                                    activeColor: whiteColor,
                                    side: BorderSide(
                                        color: whiteColor, width: 2.w),
                                    value: provider.rememberMe,
                                    onChanged: (bool? value) async {
                                      provider.setRememberMe(value!);
                                      final email = _emailController.text;
                                      final password = _passwordController.text;
                                      await provider.saveCredentials(
                                          email, password);
                                    },
                                  )),
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, '/forgotpasswordscreen');
                                },
                                child: Text(
                                  forgetPass,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: bold,
                                      color: whiteColor,
                                      fontStyle: FontStyle.italic),
                                ),
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
                              if (_emailController.text.isNotEmpty &&
                                  _passwordController.text.isNotEmpty) {
                                try {
                                  await authService.signInWithEmailAndPassword(
                                    _emailController.text,
                                    _passwordController.text,
                                    context,
                                  );
                                } catch (e) {
                                  Utils().toastMessage(e.toString());
                                }
                              } else {
                                Utils().toastMessage(
                                    "Email and password required");
                              }

                              // playerController.getPlayer();
                            },
                          ),
                          SizedBox(
                            height: 28.h,
                          ),
                        ],
                      );
                    })),
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
                onPress: () {
                  authService.signInWithGoogle(context);
                }),
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
