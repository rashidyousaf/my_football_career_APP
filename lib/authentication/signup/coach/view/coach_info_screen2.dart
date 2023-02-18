import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/coach/controller/coach_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

class CoachInfoScreen2 extends StatelessWidget {
  const CoachInfoScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final coachController = Provider.of<CoachController>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: coachcharacteristics,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
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
                    title: yourRole,
                    itemList: yourrolList,
                    hintvalue: 'Select',
                    controller: coachController.yourRoleController,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  dropdownWidget(
                    title: yourLicence,
                    itemList: yourlicenceList,
                    hintvalue: "Select",
                    controller: coachController.yourLicenceController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/coachinfoscreen3');
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
