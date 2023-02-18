import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/coach/model/coach_model.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/firestore_service.dart';
import 'package:provider/provider.dart';

import '../../player/controller/player_controller.dart';

class CoachProfileScreen extends StatefulWidget {
  const CoachProfileScreen({super.key});

  @override
  State<CoachProfileScreen> createState() => _CoachProfileScreenState();
}

class _CoachProfileScreenState extends State<CoachProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    PlayerController playerController = Provider.of<PlayerController>(context);
    TabController tabController = TabController(length: 2, vsync: this);
    // PlayerController pC = Provider.of<PlayerController>(context);
    FirestoreService fS = FirestoreService();
    return Scaffold(
      appBar: const CustomAppbar(
        icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: FutureBuilder(
            future: fS.getCoachInfo(),
            builder: (context, data) {
              if (data.connectionState == ConnectionState.done) {
                if (data.hasData) {
                  CoachModel userdata = data.data as CoachModel;
                  return Column(children: [
                    CustomContainer(
                      child: Column(children: [
                        profileWidget(
                            iconShare: Icons.share,
                            imgProfile: "${userdata.validYourIdendity1}",
                            imgFlag: "${userdata.nationality}",
                            name: "${userdata.firstName} ${userdata.lastName} ",
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
                                        height: 60.h,
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
                                            "${userdata.yourLicence}",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: regular,
                                              color: blackTitle,
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
                                            "${userdata.transferCoasts}",
                                            style: TextStyle(
                                              fontSize: 17.sp,
                                              color: blackTitle,
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
                                            '${userdata.youractualCityLocation}',
                                            style: TextStyle(
                                              fontSize: 17.sp,
                                              fontFamily: regular,
                                              color: blackTitle,
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
                                              color: blackTitle,
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
                      ]),
                    ),
                    SizedBox(
                      height: 5.h,
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
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 35),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Coach Data",
                                  style: TextStyle(
                                      fontSize: 13.sp, fontFamily: regular),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 13.sp, fontFamily: regular),
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
                      height: 250.h,
                      child: TabBarView(controller: tabController, children: [
                        // player data container

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
                                        borderRadius:
                                            BorderRadius.circular(40.r),
                                      ),
                                      child: Image.network(
                                        "${userdata.validYourIdendity1}",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Image.network(
                                        "${userdata.chanrgeSomePhotos}",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Image.network(
                                        "${userdata.chargeSomePhotos2}",
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
                                    height: 98.h,
                                    child: GridView.count(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 1,
                                      crossAxisSpacing: 1,
                                      childAspectRatio: 2,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                                    fontSize: 12.sp,
                                                    fontFamily: regular),
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
                                                    fontSize: 12.sp,
                                                    fontFamily: regular),
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
                                                    fontSize: 12.sp,
                                                    fontFamily: regular),
                                              )
                                            ],
                                          ),
                                        ),

                                        // second row of gridview

                                        Container(
                                          color: backgroudColor,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: (() async {
                                                  playerController.luanchUrl(
                                                      " ${userdata.yourTransfermarktUrl}");
                                                }),
                                                child: Image.asset(
                                                  icPPTransfer,
                                                  width: 60.w,
                                                  height: 35.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          color: backgroudColor,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              InkWell(
                                                onTap: (() async {
                                                  playerController.luanchUrl(
                                                      " ${userdata.changeYourcv}");
                                                }),
                                                child: Image.asset(
                                                  icPPPdf,
                                                  width: 45.w,
                                                  height: 39.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          color: backgroudColor,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: (() async {
                                                  playerController.luanchUrl(
                                                      " ${userdata.validYourIdendity1}");
                                                }),
                                                child: Image.asset(
                                                  icCPGallery,
                                                  width: 35.w,
                                                  height: 41.h,
                                                ),
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
                          CustomContainer(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 20.h,
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
                                    "${userdata.email}",
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
                                    '${userdata.phoneCode}${userdata.yourPhoneNumber}',
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
                  ]);
                } else if (data.hasError) {
                  return Center(
                    child: Text(data.error.toString()),
                  );
                } else {
                  return const Center(child: Text('somthing wrong'));
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: greenColor,
                  ),
                );
              }
            }),
      ),
    );
  }
}
