import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_imagePicker.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../../common_widgets/custom_textfield.dart';
import '../../../../utils/utils.dart';
import '../controller/club_controller.dart';

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
    final clubController = Provider.of<ClubController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Contact",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
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
            CustomContainer(
                child: Padding(
              padding: EdgeInsets.all(19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield(
                    controller: clubController.yourActualLocationController,
                    title: yourActualCityLocation,
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
                      controller: clubController.yourPhoneNumberController,
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
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              InkWell(
                                onTap: () async {
                                  final code = await countryPicker.showPicker(
                                      context: context);
                                  setState(() {
                                    countryCode = code;
                                    clubController.phoneCodeController.text =
                                        countryCode!.dialCode.toString();
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
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomImagePicker(
                    controller: clubController.validYourIdendityController,
                    title: validYourIdendity,
                    hint: validYourIdendityHint,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomImagePicker(
                    controller: clubController.validYourIdendity1Controller,
                    title: validYourIdendity,
                    hint: validYourIdendityHint1,
                  ),

                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      title: createProfile,
                      onPress: () async {
                        try {
                          if (clubController.validYourIdendityController.text
                                  .isNotEmpty &&
                              clubController.validYourIdendity1Controller.text
                                  .isNotEmpty) {
                            await clubController.saveClubAccount();
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/loginscreen', (route) => false);
                          } else {
                            Utils().toastMessage(
                                "Pleas wait image is uploading...");
                          }
                        } catch (e) {
                          Utils().toastMessage(e.toString());
                        }
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
