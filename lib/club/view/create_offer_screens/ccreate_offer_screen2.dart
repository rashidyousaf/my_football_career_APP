import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';

class CcreateOfferScreen2 extends StatelessWidget {
  const CcreateOfferScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: createOffer,
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
                icProgress2,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            CustomContainer(
                child: Column(
              children: [
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  whatKindofPlayerareYouLookingFor,
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
                        title: position,
                        itemList: yourrolList,
                        hintvalue: 'Select',
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomButton(
                        onPress: () {
                          Navigator.pushNamed(context, '/ccreateofferscreen3');
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
