import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/consts/consts.dart';

class PlayerInfoScreen4 extends StatelessWidget {
  const PlayerInfoScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: "Refrences",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),

            RichText(
              text: TextSpan(
                text: '4',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: greenColor,
                    fontFamily: regular,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                      text: '/5',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: semibold,
                          fontWeight: FontWeight.w700,
                          color: blackTitle)),
                ],
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            SizedBox(
              child: Image.asset(
                icProgress4,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            CustomContainer(
                child: Container(
              padding: EdgeInsets.all(19.h),
              child: Column(
                children: [
                  const CustomTextfield(
                    title: yourTransfermarktURL,
                    hint: yourTransfermarktURLHint,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomTextfield(
                    title: 'Your Fupa Url',
                    hint: 'www.fupa.com/profile',
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomTextfield(
                    title: cvResume,
                    hint: cvResumeHint,
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const CustomTextfield(
                    title: yourVideosURL,
                    hint: yourVideosURLHint,
                  ),
                  const CustomTextfield(
                    title: '',
                    hint: yourVideosURLHint,
                  ),
                  const CustomTextfield(
                    title: '',
                    hint: yourVideosURLHint,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/playerinfoscreen5');
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
