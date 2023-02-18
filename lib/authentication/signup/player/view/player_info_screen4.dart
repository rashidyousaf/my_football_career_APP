import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/controller/player_auth_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_imagePicker.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';

class PlayerInfoScreen4 extends StatelessWidget {
  const PlayerInfoScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    final playerController = Provider.of<PlayerAuthController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: "Refrences",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),

              RichText(
                text: TextSpan(
                  text: '4',
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
              // SizedBox(
              //   height: 10.h,
              // ),
              SizedBox(
                child: Image.asset(
                  icProgress4,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomContainer(
                  child: Padding(
                padding: EdgeInsets.all(19.h),
                child: Column(
                  children: [
                    CustomTextfield(
                      title: yourTransfermarktURL,
                      hint: yourTransfermarktURLHint,
                      controller:
                          playerController.yourTransfermarktUrlController,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextfield(
                      title: 'Your Fupa Url',
                      hint: 'www.fupa.com/profile',
                      controller: playerController.yourFupaUrl,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomImagePicker(
                      title: cvResume,
                      hint: cvResumeHint,
                      controller: playerController.cvResumeController,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextfield(
                      title: yourVideosURL,
                      hint: yourVideosURLHint,
                      controller: playerController.yourVideosUrl1Controller,
                    ),
                    CustomTextfield(
                      title: '',
                      hint: yourVideosURLHint,
                      controller: playerController.yourVideosUrl2Controller,
                    ),
                    CustomTextfield(
                      title: '',
                      hint: yourVideosURLHint,
                      controller: playerController.yourVideosUrl3Controller,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      onPress: () {
                        try {
                          if (playerController
                              .cvResumeController.text.isNotEmpty) {
                            Navigator.pushNamed(context, '/playerinfoscreen5');
                          } else {
                            Utils().toastMessage('Image is uploading...');
                          }
                        } catch (e) {
                          Utils().toastMessage(e.toString());
                        }
                      },
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
