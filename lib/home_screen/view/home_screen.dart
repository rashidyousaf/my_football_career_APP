import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bglogin/bg_login.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/firestore_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirestoreService firestoreService = FirestoreService();

    return Scaffold(
      body: bgLogin(
        child: Center(
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
              "Starts here!",
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
              child: CustomContainer(
                  borderColor: greenColor,
                  backgroudColor: loginButtonColor,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 28.h,
                        ),
                        SizedBox(
                          width: 255.w,
                          height: 45.h,
                          child: CustomButton(
                            title: signup,
                            onPress: () {
                              Navigator.pushNamed(context, '/signupscreen');
                            },
                          ),
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
                              child: Text(
                                login,
                                style: TextStyle(
                                  fontSize: 14.sp,
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
    );
  }
}
