import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class PlayerInfoScreen5 extends StatelessWidget {
  const PlayerInfoScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: "Contact",
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "5/5",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: bold,
                color: greenColor,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              child: Image.asset(
                icProgress5,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Container(
                  padding: const EdgeInsets.all(19),
                  child: Column(
                    children: [
                      customTextfield(
                        title: yourActualCityLocation,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      customTextfield(
                        title: yourPhoneNumber,
                        hint: '+33',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        hintColor: titlegreyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      customTextfield(
                        title: validYourIdendity,
                        hint: validYourIdendityHint,
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        hintColor: titlegreyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      customTextfield(
                        title: validYourIdendity,
                        hint: validYourIdendityHint1,
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        hintColor: titlegreyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: createProfile,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/playerprofilescreen');
                        },
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
