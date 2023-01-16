import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/bgwidget.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../common_widgets/dropdown_widget.dart';
import '../../../../common_widgets/login_container.dart';
import '../../../../common_widgets/our_button.dart';
import '../../../../consts/consts.dart';
import '../../../../consts/list.dart';

class ClubInfoScreen2 extends StatelessWidget {
  const ClubInfoScreen2({super.key});

  get counteryList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: personalInfo,
        subtitle: '',
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
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Container(
                  padding: const EdgeInsets.all(19),
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
                      customTextfield(
                        title: firstName,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      customTextfield(
                        title: lastName,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        hintColor: greyColor,
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      customTextfield(
                          title: dateofBirth,
                          hint: '',
                          isPass: false,
                          titleColor: titlegreyColor,
                          bgColor: greyColor,
                          borderColor: greyColor,
                          hintColor: greyColor,
                          icon: Icons.date_range),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: next,
                        textColor: whiteColor,
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
