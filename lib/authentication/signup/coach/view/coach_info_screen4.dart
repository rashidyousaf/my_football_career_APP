import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class CoachInfoScreen4 extends StatelessWidget {
  const CoachInfoScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: "Refrences",
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "4/5",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              child: Image.asset(
                icProgress4,
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
                        title: yourTransfermarktURL,
                        hint: yourTransfermarktURLHint,
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      customTextfield(
                        title: chargeYourCV,
                        hint: 'JPEG,PDF..',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      customTextfield(
                        title: chargeSomePhotos,
                        hint: 'upload',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      customTextfield(
                        title: chargeSomePhotos,
                        hint: 'upload',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: next,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/coachinfoscreen5');
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