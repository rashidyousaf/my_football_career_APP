import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class AcreateOfferScreen3 extends StatelessWidget {
  const AcreateOfferScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: createOffer,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "3/6",
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
                icProgress3,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      whatBudgetRequest,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: regular,
                          color: titlegreyColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 39.h, bottom: 25.h, left: 20.w, right: 20.w),
                        child: Column(children: [
                          customTextfield(
                            title: salary,
                            hint: '',
                            isPass: false,
                            titleColor: titlegreyColor,
                            borderColor: greyColor,
                            bgColor: greyColor,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          customTextfield(
                            title: monthlyYearly,
                            hint: '',
                            isPass: false,
                            titleColor: titlegreyColor,
                            borderColor: greyColor,
                            bgColor: greyColor,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ourButton(
                            color: greenColor,
                            title: next,
                            textColor: whiteColor,
                            onPress: () {
                              Navigator.pushNamed(
                                  context, '/acreateofferscreen4');
                            },
                          ),
                        ]))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
