import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/player/model/player_model.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/profile_widget2.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/controller/player_controller.dart';
import 'package:my_football_career/player/view/player_data_widget.dart';
import 'package:my_football_career/services/firestore_service.dart';
import 'package:provider/provider.dart';

class PlayerProfileScreen extends StatefulWidget {
  const PlayerProfileScreen({super.key});

  @override
  State<PlayerProfileScreen> createState() => _PlayerProfileScreenState();
}

class _PlayerProfileScreenState extends State<PlayerProfileScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    FirestoreService fS = FirestoreService();

    TabController tabController = TabController(length: 3, vsync: this);
    PlayerController playerController = Provider.of<PlayerController>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: FutureBuilder(
            future: fS.getPlayerInfo(),
            builder: (context, data) {
              if (data.connectionState == ConnectionState.done) {
                if (data.hasData) {
                  PlayerModel userdata = data.data as PlayerModel;
                  return Column(children: [
                    CustomContainer(
                        child: Column(children: [
                      profileWidget(
                        iconShare: Icons.share,
                        imgProfile: "${userdata.validYourIdendity1}",
                        imgFlag: "${userdata.nationality}",
                        name: '${userdata.firstName} ${userdata.lastName}',
                      ),
                      SizedBox(
                        height: 6.2.h,
                      ),
                      profileWidget2(
                        firstIcon: icPPShirt,
                        secondIcond: icPPAge,
                        thirdIcon: icPPLocation,
                        fourthIcon: "${userdata.clubFlag}",
                        firstName: "${userdata.jerseyNumber}",
                        secondName: "35",
                        thirdName: '${userdata.youractualCityLocation}',
                        fourthName: '${userdata.actualClub}',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ])),
                    SizedBox(
                      height: 7.h,
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
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Player Data",
                                  style: TextStyle(
                                      fontSize: 13.sp, fontFamily: regular),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Statics",
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
                      height: 8.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 220.h,
                      child: TabBarView(controller: tabController, children: [
                        // player data container
                        playerdataWidget(
                            postion: "${userdata.yourMainPosition}",
                            attackingMidfielder:
                                "${userdata.yourSecondPosition}",
                            weight: "${userdata.weight}",
                            height: "${userdata.height}",
                            strongefeet: "${userdata.yourStrongFoot}",
                            underContract: "${userdata.underContractUntil}"),
                        // statics container

                        // this portion for slider
                        Column(
                          children: [
                            ListView(
                              shrinkWrap: true,
                              children: [
                                CarouselSlider(
                                  items: [
                                    // slider first container
                                    Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40.r),
                                      ),
                                      child: Image.asset(
                                        sliderImg1,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    // slider second image/container
                                    Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Image.network(
                                        "${userdata.validYourIdendity1}",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    // slider third image/container
                                    Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Image.network(
                                        "${userdata.validYourIdendity}",
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

                            // this section below slider
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
                                              fontSize: 10.sp,
                                              fontFamily: bold),
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
                                        InkWell(
                                          onTap: (() async {
                                            playerController.luanchUrl(
                                                " ${userdata.yourVideosUrl1}");
                                          }),
                                          child: Image.asset(
                                            icPPYoutube1,
                                            width: 33.w,
                                            height: 23.h,
                                          ),
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
                                        InkWell(
                                          onTap: (() async {
                                            playerController.luanchUrl(
                                                " ${userdata.yourVideosUrl2}");
                                          }),
                                          child: Image.asset(
                                            icPPYoutube2,
                                            width: 33.w,
                                            height: 23.h,
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
                                                " ${userdata.yourVideosUrl3}");
                                          }),
                                          child: Image.asset(
                                            icPPYoutube2,
                                            width: 33.w,
                                            height: 23.h,
                                          ),
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
                                        Text(
                                          tmFupaCv,
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: bold),
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
                                                " ${userdata.yourTransfermarktUrl}");
                                          }),
                                          child: Image.asset(
                                            icPPTransfer,
                                            width: 55.w,
                                            height: 24.h,
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
                                                " ${userdata.yourFupaUrl}");
                                          }),
                                          child: Image.asset(
                                            icPPFupa,
                                            width: 32.w,
                                            height: 30.h,
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
                                                " ${userdata.cvResume}");
                                          }),
                                          child: Image.asset(
                                            icPPPdf,
                                            width: 28.w,
                                            height: 32.h,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        // contact container / section
                        Column(children: [
                          CustomContainer(
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
                                    "${userdata.phoneCode}${userdata.yourPhoneNumber}",
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
