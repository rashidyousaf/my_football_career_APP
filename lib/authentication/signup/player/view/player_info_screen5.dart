import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class PlayerInfoScreen5 extends StatefulWidget {
  const PlayerInfoScreen5({super.key});

  @override
  State<PlayerInfoScreen5> createState() => _PlayerInfoScreen5State();
}

class _PlayerInfoScreen5State extends State<PlayerInfoScreen5> {
  final TextEditingController controller = TextEditingController();
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: bgWidget(
        context: context,
        title: "Contact",
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
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
                      SizedBox(
                        height: 45.h,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.none,
                          maxLines: 1,
                          cursorColor: greenColor,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: blackTitle,
                            fontFamily: regular,
                          ),
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
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 3.w),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                icArrowN,
                                                width: 10.w,
                                                height: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                countryCode?.dialCode ?? "+352",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    fontFamily: regular,
                                                    color: hintgreyColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              )),
                        ),
                      ),

                      // customTextfield(
                      //   title: yourPhoneNumber,
                      //   hint: '+33',
                      //   isPass: false,
                      //   titleColor: titlegreyColor,
                      //   bgColor: greyColor,
                      //   hintColor: titlegreyColor,
                      //   borderColor: greyColor,
                      // ),
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
                            Navigator.pushNamed(context, '/playerhomescreen');
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
