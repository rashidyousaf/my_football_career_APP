import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class ClubInfoScreen3 extends StatefulWidget {
  const ClubInfoScreen3({super.key});

  @override
  State<ClubInfoScreen3> createState() => _ClubInfoScreen3State();
}

class _ClubInfoScreen3State extends State<ClubInfoScreen3> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
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
              "3/3",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      // phone number text field
                      Text(
                        yourPhoneNumber,
                        style: TextStyle(
                            color: titlegreyColor,
                            fontSize: 14.sp,
                            fontFamily: regular),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      // this is countery code seletion field
                      SizedBox(
                        height: 45.h,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.none,
                          maxLines: 1,
                          decoration: InputDecoration(
                              fillColor: greyColor,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9.r),
                                borderSide: BorderSide(
                                  color: greyColor,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: greyColor,
                                  ),
                                  borderRadius: BorderRadius.circular(9.r)),
                              border: InputBorder.none,
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 6.h),
                                margin: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          final code = await countryPicker
                                              .showPicker(context: context);
                                          setState(() {
                                            countryCode = code;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              icArrowN,
                                              width: 10.w,
                                              height: 5.h,
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Text(
                                              countryCode?.dialCode ?? "+1",
                                              style: TextStyle(fontSize: 12.sp),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                              )),
                        ),
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
                        hintColor: hintgreyColor,
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
                        hintColor: hintgreyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ourButton(
                          color: greenColor,
                          title: createProfile,
                          textColor: whiteColor,
                          onPress: () {
                            Navigator.pushNamed(context, '/clubhomescreen');
                          },
                        ),
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
