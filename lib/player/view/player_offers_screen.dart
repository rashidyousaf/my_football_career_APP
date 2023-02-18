import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/player_offer_container.dart';

import '../../consts/consts.dart';

class PlayerOffersScreen extends StatelessWidget {
  const PlayerOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppbar(
          title: offers,
          // icon: icBell,
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(children: [
              // this section for search
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45.h,
                    child: TextFormField(
                      style: TextStyle(
                          color: blackTitle,
                          fontSize: 15.sp,
                          fontFamily: regular),
                      cursorColor: greenColor,
                      autocorrect: false,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: greenColor,
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.r),
                          borderSide: const BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.r),
                          borderSide: const BorderSide(
                            color: whiteColor,
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            color: titlegreyColor),
                        hintText: 'Search',
                        isDense: true,
                        fillColor: whiteColor,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              // this section for end of search bar
              SizedBox(
                height: 21.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/playerdetailofferscreen');
                },
                child: CustomContainer(
                    child: playerOfferContainer(
                  icon1: icOShirt,
                  icon2: icOCup,
                  icon3: icOSheet,
                  icon4: icOPromise,
                  flag: icOFlag,
                  flag1: icOLogo,
                  text1: centreForward,
                  text2: ligaPortugal,
                  text3: professional,
                  text4: month,
                )),
              ),

              // second portion
              SizedBox(
                height: 17.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/playerdetailofferscreen');
                },
                child: CustomContainer(
                    backgroudColor: whiteColor,
                    borderColor: whiteColor,
                    child: playerOfferContainer(
                      icon1: icOShirt,
                      icon2: icOCup,
                      icon3: icOSheet,
                      icon4: icOPromise,
                      flag: icOFlag,
                      flag1: icOLogo,
                      text1: centreForward,
                      text2: ligaPortugal,
                      text3: professional,
                      text4: month,
                    )),
              ),
              // third portion
              SizedBox(
                height: 17.h,
              ),
              CustomContainer(
                  backgroudColor: whiteColor,
                  borderColor: whiteColor,
                  child: playerOfferContainer(
                    icon1: icOShirt,
                    icon2: icOCup,
                    icon3: icOSheet,
                    icon4: icOPromise,
                    flag: icOFlag,
                    flag1: icOLogo,
                    text1: centreForward,
                    text2: ligaPortugal,
                    text3: professional,
                    text4: month,
                  ))
            ])));
  }
}
