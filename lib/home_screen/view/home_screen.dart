import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/login/view/login_screen.dart';
import 'package:my_football_career/authentication/signup/view/signup_screen.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgLogin(
        child: Scaffold(
          body: Center(
              child: Column(
            children: [
              SizedBox(
                height: 64.h,
              ),
              appLogoWidget(),
              SizedBox(
                height: 201.h,
              ),
              Text(
                "Start Here!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 64.h,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: loginContainer(
                    borderColor: greenColor,
                    backgroudColor: loginButtonColor,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 28.h,
                          ),
                          ourButton(
                            color: greenColor,
                            textColor: whiteColor,
                            title: signup,
                            onPress: () {
                              Navigator.pushNamed(context, '/signupscreen');
                            },
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                          SizedBox(
                            width: 255.w,
                            height: 45.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: loginButtonColor,
                                    side: const BorderSide(
                                      color: greenColor,
                                    )),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/loginscreen');
                                },
                                child: const Text(
                                  login,
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
