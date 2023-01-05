import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/player_offer_container.dart';

import '../../common_widgets/bgwidget.dart';
import '../../consts/consts.dart';

class CoachOffersScreen extends StatelessWidget {
  const CoachOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bgWidget(
            title: 'Offers',
            context: context,
            subtitle: '',
            icon: Icons.notifications,
            child: SingleChildScrollView(
              child: Column(children: [
                // SizedBox(
                //   height: 26.h,
                // ),
                // Container(
                //   alignment: Alignment.center,
                //   height: 45,
                //   decoration: BoxDecoration(
                //     color: whiteColor,
                //     borderRadius: BorderRadius.circular(21.r),
                //   ),
                //   child: const TextField(
                //     decoration: InputDecoration(
                //       border: InputBorder.none,
                //       suffixIcon: Icon(
                //         Icons.search,
                //         color: greyColor,
                //       ),
                //       filled: true,
                //       fillColor: whiteColor,
                //       hintText: "search",
                //       hintStyle: TextStyle(color: greyColor),
                //     ),
                //   ),
                // ),
                customTextfield(
                  title: '',
                  hint: 'Search',
                  hintColor: greyColor,
                  borderColor: whiteColor,
                  isPass: false,
                  bgColor: whiteColor,
                  icon: Icons.search,
                ),
                SizedBox(
                  height: 21.h,
                ),
                loginContainer(
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

                // second portion
                SizedBox(
                  height: 17.h,
                ),
                loginContainer(
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
                // third portion
                SizedBox(
                  height: 17.h,
                ),
                loginContainer(
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
              ]),
            )));
  }
}
