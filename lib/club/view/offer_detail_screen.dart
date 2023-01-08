import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/profile_widget2.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/view/player_data_widget.dart';

class OfferDetailScreen extends StatefulWidget {
  const OfferDetailScreen({super.key});

  @override
  State<OfferDetailScreen> createState() => _OfferDetailScreenState();
}

class _OfferDetailScreenState extends State<OfferDetailScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: bgWidget(
            title: '',
            context: context,
            subtitle: '',
            icon: Icons.notifications,
            child: Column(children: [
              loginContainer(
                  backgroudColor: whiteColor,
                  borderColor: whiteColor,
                  child: Column(children: [
                    profileWidget(
                      iconShare: Icons.share,
                      imgProfile: icPPImg,
                      imgFlag: icPPFlag,
                      name: leoMessi,
                    ),
                    SizedBox(
                      height: 6.2.h,
                    ),
                    profileWidget2(
                      firstIcon: icPPShirt,
                      secondIcond: icPPAge,
                      thirdIcon: icPPLocation,
                      fourthIcon: icPPParis,
                      firstName: "30",
                      secondName: "35",
                      thirdName: "Paris",
                      fourthName: 'PSG',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ])),

              // tabbar portion

              SizedBox(
                height: 11.h,
              ),
              playerdataWidget(),
              SizedBox(
                height: 19.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90.w,
                    height: 35.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(redColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ))),
                        onPressed: () {},
                        child: Text(
                          "Decline",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: regular,
                              fontSize: 12.sp),
                        )),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 100.w,
                    height: 35.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(whiteColor),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    side: BorderSide(color: greenColor)))),
                        onPressed: () {},
                        child: Text(
                          "View Profile",
                          style: TextStyle(
                              color: greenColor,
                              fontFamily: regular,
                              fontSize: 12.sp),
                        )),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 90.w,
                    height: 35.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(greenColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ))),
                        onPressed: () {},
                        child: Text(
                          "Approve",
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: regular,
                              fontSize: 12.sp),
                        )),
                  ),
                ],
              )
            ]
                // player data container

                // statics container
                )));
  }
}
