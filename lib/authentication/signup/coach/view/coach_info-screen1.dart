import 'package:country_picker/country_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';

class CoachInfoScreen1 extends StatefulWidget {
  const CoachInfoScreen1({super.key});

  @override
  State<CoachInfoScreen1> createState() => _CoachInfoScreen1State();
}

class _CoachInfoScreen1State extends State<CoachInfoScreen1> {
  String countryFlag = "";
  String? countryName;
  CountryCode? countryCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: personalInfo,
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
                text: '1',
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
            CustomContainer(
                child: Padding(
              padding: EdgeInsets.all(19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextfield(
                    title: firstName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  const CustomTextfield(
                    title: lastName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  const CustomTextfield(
                      title: dateofBirth, icon: Icons.date_range),
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
                            favorite: ['LU'],
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
                    child: CustomButton(
                      onPress: () {
                        Navigator.pushNamed(context, '/coachinfoscreen2');
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
