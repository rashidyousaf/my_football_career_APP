import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';

import '../../common_widgets/club_offer_container.dart';
import '../../common_widgets/login_container.dart';
import '../../consts/consts.dart';

class ClubOffersScreen extends StatelessWidget {
  const ClubOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgWidget(
        title: manageYourOffers,
        context: context,
        subtitle: '',
        icon: Icons.notifications,
        child: Column(
          children: [
            SizedBox(
              height: 76.h,
            ),
            //first portion
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/offerdetailscreen");
              },
              child: loginContainer(
                  backgroudColor: whiteColor,
                  borderColor: whiteColor,
                  child: clubOfferContainer(
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
            //second portion
            SizedBox(
              height: 32.h,
            ),
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
                child: clubOfferContainer(
                  icon1: icCoach,
                  icon2: icOCup,
                  icon3: icOSheet,
                  icon4: icOPromise,
                  flag: icOFlag,
                  flag1: icOLogo,
                  text1: videoAnalyst,
                  text2: ligaPortugal,
                  text3: professional,
                  text4: month,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.pushNamed(context, '/ccreateofferscreen1');
        },
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          color: whiteColor,
        ),
      ),
    );
  }
}
