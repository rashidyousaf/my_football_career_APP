import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/controller/player_auth_controller.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_button.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

class PlayerInfoScreen2 extends StatefulWidget {
  const PlayerInfoScreen2({super.key});

  @override
  State<PlayerInfoScreen2> createState() => _PlayerInfoScreen2State();
}

class _PlayerInfoScreen2State extends State<PlayerInfoScreen2> {
  @override
  Widget build(BuildContext context) {
    final playerContrller = Provider.of<PlayerAuthController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: playerCharacteristics,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
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
                icProgress2,
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
                children: [
                  dropdownWidget(
                    title: youMainPosition,
                    itemList: postionList,
                    hintvalue: 'Select',
                    controller: playerContrller.yourMainPositionController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  dropdownWidget(
                    title: yourSecondPosition,
                    itemList: postionList,
                    hintvalue: "Select",
                    controller: playerContrller.yourSecondPositionController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  dropdownWidget(
                    title: height,
                    itemList: heightList,
                    hintvalue: "Select",
                    controller: playerContrller.heightController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  dropdownWidget(
                    title: weight,
                    itemList: weightList,
                    hintvalue: "Select",
                    controller: playerContrller.weightController,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  dropdownWidget(
                    title: yourStrongFoot,
                    itemList: strongfootList,
                    hintvalue: "Select",
                    controller: playerContrller.yourStrongFootController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/playerinfoscreen3');
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
