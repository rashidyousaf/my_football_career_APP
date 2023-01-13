import 'package:country_picker/country_picker.dart';

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
  // CountryCode? countryCode;
  String? countryName;
  String countryFlag = "";
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
                      // countery picker
                      GestureDetector(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                showPhoneCode: false,
                                countryListTheme: CountryListThemeData(
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        color: const Color.fromARGB(
                                            255, 132, 132, 132)),
                                    bottomSheetHeight: 600.h,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r)),
                                    inputDecoration: InputDecoration(
                                      hintText: 'Start typing to search',
                                      labelStyle: TextStyle(fontSize: 20.sp),
                                      labelText: 'Search ',
                                    )),
                                favorite: ['US'],
                                onSelect: (Country value) {
                                  countryFlag = value.flagEmoji.toString();
                                  countryName = value.name.toString();
                                  setState(() {});
                                });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            padding: EdgeInsets.all(10.h),
                            height: 45.h,
                            child: Row(
                              children: [
                                Text(
                                  countryFlag,
                                  style: TextStyle(
                                      color: titlegreyColor, fontSize: 20.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  countryName ?? 'Select',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: titlegreyColor),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 25.sp,
                                  color: greenColor,
                                )
                              ],
                            ),
                          )),

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
