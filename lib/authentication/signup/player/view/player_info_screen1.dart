import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class PlayerInfoScreen1 extends StatefulWidget {
  const PlayerInfoScreen1({super.key});

  @override
  State<PlayerInfoScreen1> createState() => _PlayerInfoScreen1State();
}

class _PlayerInfoScreen1State extends State<PlayerInfoScreen1> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: personalInfo,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "1/5",
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
                icProgress1,
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
                        title: firstName,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      customTextfield(
                        title: lastName,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      customTextfield(
                          title: dateofBirth,
                          hint: '',
                          isPass: false,
                          titleColor: titlegreyColor,
                          bgColor: greyColor,
                          borderColor: greyColor,
                          hintColor: greyColor,
                          icon: Icons.date_range),
                      SizedBox(
                        height: 19.h,
                      ),

                      // country picker
                      Text(
                        nationality,
                        style: TextStyle(
                            color: titlegreyColor,
                            fontSize: 14.sp,
                            fontFamily: regular),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      InkWell(
                        onTap: () async {
                          final code =
                              await countryPicker.showPicker(context: context);
                          setState(() {
                            countryCode = code;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 45.h,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(9.r),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: countryCode != null
                                    ? countryCode!.flagImage
                                    : null,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                countryCode?.name ?? "Select",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: titlegreyColor,
                                    fontFamily: regular),
                              ),
                              const Spacer(),
                              Image.asset(
                                icArrowN,
                                width: 10.w,
                                height: 5.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      // this countries picker

                      SizedBox(
                        height: 19.h,
                      ),
                      dropdownWidget(
                        title: gender,
                        itemList: genderList,
                        hintvalue: gender,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ourButton(
                          color: greenColor,
                          title: next,
                          textColor: whiteColor,
                          onPress: () {
                            Navigator.pushNamed(context, '/playerinfoscreen2');
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
