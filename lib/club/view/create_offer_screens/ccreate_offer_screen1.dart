import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class CcreateOfferScreen1 extends StatelessWidget {
  const CcreateOfferScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: createOffer,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
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
                      text: '/6',
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      forwhoareyoulookingfor,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: regular,
                          color: titlegreyColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 39.h, bottom: 25.h, left: 20.w, right: 20.w),
                        child: Column(children: [
                          dropdownWidget(
                            title: positionType,
                            itemList: yourrolinclubList,
                            hintvalue: 'Select',
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ourButton(
                            color: greenColor,
                            title: next,
                            textColor: whiteColor,
                            onPress: () {
                              Navigator.pushNamed(
                                  context, '/ccreateofferscreen2');
                            },
                          ),
                        ]))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
