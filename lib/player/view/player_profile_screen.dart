import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/profile_widget2.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/view/player_data_widget.dart';

class PlayerProfileScreen extends StatefulWidget {
  const PlayerProfileScreen({super.key});

  @override
  State<PlayerProfileScreen> createState() => _PlayerProfileScreenState();
}

class _PlayerProfileScreenState extends State<PlayerProfileScreen>
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
                  firstName: "",
                  secondName: "35",
                  thirdName: "Paris",
                  fourthName: 'PSG',
                ),
                SizedBox(
                  height: 12.h,
                ),
              ])),
          SizedBox(
            height: 10.h,
          ),

          // tabbar portion
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            elevation: 5,
            child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                // Tabbar portion
                child: TabBar(
                  indicator: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  controller: tabController,
                  unselectedLabelColor: greyColor,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      child: Text(
                        "Player Data",
                        style: TextStyle(fontSize: 13.sp, fontFamily: regular),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Statics",
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
            height: 220.h,
            child: TabBarView(controller: tabController, children: [
              // player data container
              playerdataWidget(),
              // statics container
              Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.r),
                            ),
                            child: Image.asset(
                              sliderImg1,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Image.asset(
                              sliderImg3,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Image.asset(
                              sliderImg2,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 125.h,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    color: whiteColor,
                    width: double.maxFinite,
                    height: 80.h,
                    child: GridView.count(
                      crossAxisCount: 4,
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
                                videos,
                                style: TextStyle(
                                    fontSize: 10.sp, fontFamily: bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: backgroudColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Image.asset(
                                icPPYoutube1,
                                width: 33.w,
                                height: 23.h,
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: backgroudColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Image.asset(
                                icPPYoutube2,
                                width: 33.w,
                                height: 23.h,
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
                                icPPYoutube2,
                                width: 33.w,
                                height: 23.h,
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
                              Text(
                                tmFupaCv,
                                style: TextStyle(
                                    fontSize: 10.sp, fontFamily: bold),
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
                                icPPTransfer,
                                width: 55.w,
                                height: 24.h,
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
                                height: 5.h,
                              ),
                              Image.asset(
                                icPPFupa,
                                width: 32.w,
                                height: 30.h,
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
                                height: 5.h,
                              ),
                              Image.asset(
                                icPPPdf,
                                width: 28.w,
                                height: 32.h,
                              )
                            ],
                          ),
                        )
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
                              leomessimail,
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
                              leomessinumber,
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
          ),
        ]),
      ),
    );
  }
}
