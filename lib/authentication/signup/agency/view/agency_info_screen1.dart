import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/agency/controller/agency_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_country_picker.dart';
import 'package:provider/provider.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../consts/consts.dart';

class AgencyInfoScreen1 extends StatelessWidget {
  const AgencyInfoScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final agencyController = Provider.of<AgencyController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: agencyInfo,
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
                  CustomTextfield(
                    controller: agencyController.nameYourAgencyController,
                    title: nameYourAgency,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  // this section for country picker
                  CustomCountryPicker(
                      title: "Country",
                      countryFlagController:
                          agencyController.countryFlagController),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomTextfield(
                    controller: agencyController.adressYourAgencyController,
                    title: adressYourAgency,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/agencyinfoscreen2');
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
