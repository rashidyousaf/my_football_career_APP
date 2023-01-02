import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class PlayerInfoScreen3 extends StatelessWidget {
  const PlayerInfoScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: actualSituation,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "3/5",
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
                icProgress3,
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
                          title: actualClub,
                          itemList: actualclubList,
                          hintvalue: 'Select'),
                      SizedBox(
                        height: 15.h,
                      ),
                      customTextfield(
                        title: underContractUntil,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        icon: Icons.date_range,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                          title: availableTransfer,
                          itemList: availabletransferList,
                          hintvalue: 'Select'),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                          title: transferCoasts,
                          itemList: dropdownList,
                          hintvalue: '0'),
                      SizedBox(
                        height: 19.h,
                      ),
                      dropdownWidget(
                        title: jerseynumber,
                        itemList: jerseynumberList,
                        hintvalue: 'Select',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: next,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/playerinfoscreen4');
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
