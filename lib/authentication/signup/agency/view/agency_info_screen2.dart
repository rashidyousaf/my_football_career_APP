import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/bgwidget.dart';
import '../../../../common_widgets/custom_textfield.dart';
import '../../../../common_widgets/dropdown_widget.dart';
import '../../../../common_widgets/login_container.dart';
import '../../../../common_widgets/our_button.dart';
import '../../../../consts/consts.dart';
import '../../../../consts/list.dart';

class AgencyInfoScreen2 extends StatelessWidget {
  const AgencyInfoScreen2({super.key});

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
              height: 26.h,
            ),
            Text(
              "2/3",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: bold,
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
                        title: yourRoleAgency,
                        itemList: yourroleinagencyList,
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
                          Navigator.pushNamed(context, '/agencyinfoscreen3');
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
