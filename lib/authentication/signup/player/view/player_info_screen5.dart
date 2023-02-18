import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/controller/player_auth_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_datepicker.dart';
import 'package:my_football_career/common_widgets/custom_imagePicker.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../../utils/utils.dart';

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
    final playerController = Provider.of<PlayerAuthController>(context);

    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Contact',
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
            CustomContainer(
                child: Container(
              padding: EdgeInsets.all(19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextfield(
                    title: yourActualCityLocation,
                    hint: '',
                    controller:
                        playerController.youractualCityLocationController,
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
                      controller: playerController.yourPhoneNumberController,
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
                                    playerController.phoneCodeController.text =
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
                    title: validYourIdendity,
                    hint: validYourIdendityHint,
                    controller: playerController.validYourIdendityController,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomImagePicker(
                    title: validYourIdendity,
                    controller: playerController.validYourIdendityController1,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      title: createProfile,
                      onPress: () async {
                        try {
                          if (playerController.validYourIdendityController.text
                                  .isNotEmpty &&
                              playerController.validYourIdendityController1.text
                                  .isNotEmpty) {
                            await playerController.savePlyarAccount();
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/loginscreen', (route) => false);
                          } else {
                            Utils().toastMessage('Image is uploading...');
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
