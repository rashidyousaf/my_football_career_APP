import 'package:country_picker/country_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_datepicker.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../../common_widgets/custom_country_picker.dart';
import '../controller/coach_controller.dart';

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
    final coachController = Provider.of<CoachController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: personalInfo,
      ),
      body: SingleChildScrollView(
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
                  CustomTextfield(
                    controller: coachController.firstNameController,
                    title: firstName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomTextfield(
                    controller: coachController.lastNameController,
                    title: lastName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomDatepicker(
                    contrler: coachController.dateOfBirthController,
                    title: dateofBirth,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  // country picker

                  // countery picker
                  CustomCountryPicker(
                    title: nationality,
                    countryFlagController:
                        coachController.nationalityController,
                  ),
                  // this countries picker
                  SizedBox(
                    height: 19.h,
                  ),
                  dropdownWidget(
                    title: gender,
                    itemList: genderList,
                    hintvalue: gender,
                    controller: coachController.genderController,
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
