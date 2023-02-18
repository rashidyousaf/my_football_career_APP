import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_datepicker.dart';
import 'package:provider/provider.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../common_widgets/dropdown_widget.dart';
import '../../../../consts/consts.dart';
import '../controller/club_controller.dart';

class ClubInfoScreen2 extends StatelessWidget {
  const ClubInfoScreen2({super.key});

  get counteryList => null;

  @override
  Widget build(BuildContext context) {
    final clubController = Provider.of<ClubController>(context);
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
                text: '2',
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
                icProgress2,
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
                  dropdownWidget(
                    controller: clubController.yourRoleinClubController,
                    title: yourRoleClub,
                    itemList: yourrolinclubList,
                    hintvalue: 'Select',
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomTextfield(
                    controller: clubController.firstNameController,
                    title: firstName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomTextfield(
                    controller: clubController.lastNameController,
                    title: lastName,
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  CustomDatepicker(
                    contrler: clubController.dateOfBirthController,
                    title: dateofBirth,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/clubinfoscreen3');
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
