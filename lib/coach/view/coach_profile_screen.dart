import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/profile_widget2.dart';
import 'package:my_football_career/consts/consts.dart';

class CoachProfileScreen extends StatefulWidget {
  const CoachProfileScreen({super.key});

  @override
  State<CoachProfileScreen> createState() => _CoachProfileScreenState();
}

class _CoachProfileScreenState extends State<CoachProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
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
                    imgProfile: icCPImage,
                    imgFlag: icCPFlag,
                    name: thomasTuchel,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6.2.h,
                        ),
                        profileWidget2(
                          firstIcon: icCPBatch,
                          secondIcond: icPPAge,
                          thirdIcon: icPPLocation,
                          fourthIcon: icCPBall,
                          firstName: uefaPro,
                          secondName: "49",
                          thirdName: "Paris",
                          fourthName: '-',
                        ),
                      ],
                    )),
                SizedBox(
                  height: 12.h,
                ),
              ])),
          SizedBox(
            height: 15.h,
          ),

          // tabbar portion
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            elevation: 3,
            child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  controller: tabController,
                  unselectedLabelColor: greyColor,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 35),
                  tabs: [
                    Tab(
                      child: Text(
                        "Coach Data",
                        style: TextStyle(fontSize: 13.sp, fontFamily: regular),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Contact",
                        style: TextStyle(fontSize: 13.sp, fontFamily: regular),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 218.h,
            child: TabBarView(controller: tabController, children: [
              // player data container

              // statics container
              Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),

                        // gridview container
                        Container(
                          color: whiteColor,
                          width: double.maxFinite,
                          height: 110.h,
                          child: GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                            childAspectRatio: 2,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            // first row of gridview
                            children: [
                              Container(
                                color: backgroudColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      tmProfile,
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: backgroudColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      cv,
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: backgroudColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Text(
                                      gallery,
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),

                              // second row of gridview

                              Container(
                                color: backgroudColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Image.asset(
                                      icPPTransfer,
                                      width: 70.w,
                                      height: 35.h,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: backgroudColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Image.asset(
                                      icPPPdf,
                                      width: 31.w,
                                      height: 39.h,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: backgroudColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Image.asset(
                                      icCPGallery,
                                      width: 45.w,
                                      height: 41.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h)
                      ],
                    ),
                  ),
                ],
              ),
              // contact container
              Column(children: [
                loginContainer(
                    backgroudColor: whiteColor,
                    borderColor: whiteColor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 21.w,
                            ),
                            Image.asset(
                              icPPEmail,
                              width: 28.w,
                              height: 19.50.h,
                            ),
                            SizedBox(
                              width: 13.w,
                            ),
                            Text(
                              thomasMail,
                              style: TextStyle(
                                  fontSize: 13.sp, fontFamily: regular),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Divider(
                          thickness: 1,
                          indent: 30,
                          endIndent: 30,
                          color: greyColor,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 21.w,
                            ),
                            Image.asset(
                              icPPPhone,
                              width: 28.w,
                              height: 19.50.h,
                            ),
                            SizedBox(
                              width: 13.w,
                            ),
                            Text(
                              thomasNumber,
                              style: TextStyle(
                                  fontSize: 13.sp, fontFamily: regular),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                      ],
                    )),
              ])
            ]),
          )
        ]),
      ),
    );
  }
}
