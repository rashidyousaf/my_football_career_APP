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
          SizedBox(
            height: 10.h,
          ),
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
                        // this section profile section below
                        Column(children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              // this section for shirt
                              SizedBox(
                                width: 130.w,
                                height: 75.h,
                                child: Column(children: [
                                  Image.asset(
                                    icCPBatch,
                                    width: 30.w,
                                    height: 30.h,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    uefaPro,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: semibold,
                                    ),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                color: greyColor,
                                height: 56.h,
                                width: 1.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
// this section for age
                              SizedBox(
                                width: 130.w,
                                child: Column(children: [
                                  Image.asset(
                                    icPPAge,
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    "49",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: semibold,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                          // this section for horizintal lines
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Container(
                                color: greyColor,
                                width: 118.w,
                                height: 1.h,
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Container(
                                color: greyColor,
                                width: 118.w,
                                height: 1.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              // this section for for location
                              SizedBox(
                                width: 130.w,
                                child: Column(children: [
                                  Image.asset(
                                    icPPLocation,
                                    width: 20.w,
                                    height: 22.h,
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    paris,
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: semibold,
                                    ),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                color: greyColor,
                                height: 56.h,
                                width: 1.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              // this section for last
                              SizedBox(
                                width: 130.w,
                                child: Column(children: [
                                  Image.asset(
                                    icCPBall,
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(
                                    height: 9.h,
                                  ),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 17.sp,
                                      fontFamily: semibold,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ]),
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
            height: 200.h,
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
                                      width: 60.w,
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
                                      width: 45.w,
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
                                      width: 35.w,
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
