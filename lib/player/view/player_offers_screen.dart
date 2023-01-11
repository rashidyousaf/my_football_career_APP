import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/player_offer_container.dart';

import '../../common_widgets/bgwidget.dart';
import '../../consts/consts.dart';

class PlayerOffersScreen extends StatelessWidget {
  const PlayerOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bgWidget(
            title: 'Offers',
            context: context,
            subtitle: '',
            icon: Icons.notifications,
            child: Column(children: [
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
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/playerdetailofferscreen');
                },
                child: loginContainer(
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

              // second portion
              SizedBox(
                height: 17.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/playerdetailofferscreen');
                },
                child: loginContainer(
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
            ])));
  }
}
