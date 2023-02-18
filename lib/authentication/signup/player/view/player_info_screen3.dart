import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/controller/player_auth_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/custom_datepicker.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../../../common_widgets/custom_club_search.dart';
import '../../../../common_widgets/custom_textfield.dart';

class PlayerInfoScreen3 extends StatefulWidget {
  const PlayerInfoScreen3({super.key});

  @override
  State<PlayerInfoScreen3> createState() => _PlayerInfoScreen3State();
}

class _PlayerInfoScreen3State extends State<PlayerInfoScreen3> {
  @override
  Widget build(BuildContext context) {
    final playerController = Provider.of<PlayerAuthController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: actualSituation,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            RichText(
              text: TextSpan(
                text: '3',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: greenColor,
                    fontFamily: regular,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                      text: '/5',
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
                icProgress3,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            CustomContainer(
                child: Container(
              padding: EdgeInsets.all(19.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // this section for actual club

                  // this section for drop down
                  CustomClubSearch(
                    title: actualClub,
                    nameController: playerController.actualClubController,
                    flagController: playerController.clubFlagController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomDatepicker(
                    title: underContractUntil,
                    contrler: playerController.underContractUntilController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  dropdownWidget(
                    title: availableTransfer,
                    itemList: availabletransferList,
                    hintvalue: 'Select',
                    controller: playerController.availableForTransferController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextfield(
                    title: transferCoasts,
                    controller: playerController.transferCoastsController,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  dropdownWidget(
                      title: jerseynumber,
                      itemList: jerseynumberList,
                      hintvalue: 'Select',
                      controller: playerController.jerseyNumberController),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
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
