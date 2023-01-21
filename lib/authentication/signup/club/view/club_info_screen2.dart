import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../common_widgets/dropdown_widget.dart';
import '../../../../consts/consts.dart';

class ClubInfoScreen2 extends StatelessWidget {
  const ClubInfoScreen2({super.key});

  get counteryList => null;

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
                  dropdownWidget(
                    title: yourRoleClub,
                    itemList: yourrolinclubList,
                    hintvalue: 'Select',
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
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
                      title: dateofBirth, hint: '', icon: Icons.date_range),
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
