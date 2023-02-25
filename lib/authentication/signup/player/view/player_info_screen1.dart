import 'package:country_picker/country_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/controller/player_auth_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_datepicker.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../../common_widgets/custom_country_picker.dart';
import '../../../../common_widgets/custom_textfield.dart';

class PlayerInfoScreen1 extends StatefulWidget {
  const PlayerInfoScreen1({super.key});

  @override
  State<PlayerInfoScreen1> createState() => _PlayerInfoScreen1State();
}

class _PlayerInfoScreen1State extends State<PlayerInfoScreen1> {
  // CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    // final formKey = GlobalKey<FormState>();

    final playerController = Provider.of<PlayerAuthController>(context);

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
              width: 315.w,
              height: 7.h,
              child: Image.asset(
                icProgress1,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            CustomContainer(
                child: Container(
              padding: EdgeInsets.all(19.h),
              child: Form(
                // key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextfield(
                      controller: playerController.firstNameController,
                      title: firstName,
                    ),
                    SizedBox(
                      height: 21.h,
                    ),

                    CustomTextfield(
                      controller: playerController.lastNameController,
                      title: lastName,
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    // CustomTextfield(
                    //   controller: playerController.dateOfBirthController,
                    //   title: dateofBirth,

                    // ),
                    CustomDatepicker(
                      title: dateofBirth,
                      contrler: playerController.dateController,
                      dateContrler: playerController.dateOfBirthController,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),

                    // country picker
                    CustomCountryPicker(
                      title: nationality,
                      countryFlagController:
                          playerController.nationalityController,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),

                    dropdownWidget(
                      title: gender,
                      itemList: genderList,
                      hintvalue: gender,
                      controller: playerController.genderController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomButton(
                        onPress: () {
                          // if (formKey.currentState!.validate()) {}
                          Navigator.pushNamed(context, '/playerinfoscreen2');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
