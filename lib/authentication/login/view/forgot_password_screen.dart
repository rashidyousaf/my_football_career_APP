import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/auth_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

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
                              hintText: "Please enter register email",
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        title: "Submit",
                        onPress: () async {
                          // if (_formKey.currentState!.validate()) {}
                          // pC.getPlayer();
                          if (emailController.text.isNotEmpty) {
                            try {
                              await authService.recoverPassword(
                                  emailController.text, context);
                            } catch (e) {
                              Utils().toastMessage(e.toString());
                            }
                          } else {
                            Utils().toastMessage("Email required");
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
            // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //   SizedBox(
            //     width: 20.w,
            //   ),
            //   Text(
            //     dontHaveAccount,
            //     style: TextStyle(
            //       fontSize: 14.sp,
            //       color: whiteColor,
            //     ),
            //   ),
            //   SizedBox(
            //     width: 3.w,
            //   ),
            //   InkWell(
            //     onTap: () {
            //       Navigator.pushNamed(context, '/signupscreen');
            //     },
            //     child: Text(
            //       signup,
            //       style: TextStyle(
            //         fontSize: 14.sp,
            //         fontFamily: bold,
            //         color: greenColor,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   )
            // ])
          ],
        ),
      )),
    );
  }
}
