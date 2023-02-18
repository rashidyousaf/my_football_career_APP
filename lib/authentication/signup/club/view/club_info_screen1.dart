import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_club_search.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_country_picker.dart';
import 'package:provider/provider.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../consts/consts.dart';
import '../controller/club_controller.dart';

class ClubInfoScreen1 extends StatelessWidget {
  const ClubInfoScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final clubController = Provider.of<ClubController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: clubInfo,
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
                      text: '/3',
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
                children: [
                  CustomClubSearch(
                    nameController: clubController.nameYourClubController,
                    flagController: clubController.clubFlagController,
                    title: nameYourClub,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  // this section for country picker

                  CustomCountryPicker(
                      title: "Country",
                      countryFlagController: clubController.clubFlagController),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomTextfield(
                    controller: clubController.adressYourClubController,
                    title: adressYourClub,
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/clubinfoscreen2');
                    },
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
