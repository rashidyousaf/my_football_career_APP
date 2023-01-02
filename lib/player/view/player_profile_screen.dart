import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/profile_widget2.dart';
import 'package:my_football_career/consts/consts.dart';

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
          SizedBox(height: 27.h),
          loginContainer(
              backgroudColor: whiteColor,
              borderColor: whiteColor,
              child: Column(children: [
                profileWidget(),
                SizedBox(
                  height: 6.2.h,
                ),
                profileWidget2(),
                SizedBox(
                  height: 12.h,
                ),
              ])),
          SizedBox(
            height: 18.h,
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
            height: 17.h,
          ),
          Container(
            width: double.maxFinite,
            height: 227.h,
            child: TabBarView(controller: tabController, children: [
              // player data container
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        icPPGroundImg,
                        width: 146.w,
                        height: 179.h,
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text(
                        availableTransfer,
                        style: TextStyle(
                          fontSize: 9.sp,
                        ),
                      ),
                      Image.asset(
                        icPPTick2,
                        width: 18.w,
                        height: 18.h,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Column(
                    children: [
                      Text(position,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 54, 53, 53),
                            fontSize: 12.sp,
                          )),
                      Text(rightWinger,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          )),
                      Text(or,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                          )),
                      Text(attackingMidfielder,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          )),
                      SizedBox(
                        height: 36.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            icPPWeight,
                            width: 25.w,
                            height: 22.h,
                          ),
                          SizedBox(
                            width: 29.w,
                          ),
                          Image.asset(
                            icPPHeight,
                            width: 21.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            width: 36.w,
                          ),
                          Image.asset(
                            icPPFeet,
                            width: 17.w,
                            height: 26.h,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "70",
                            style:
                                TextStyle(fontSize: 14.sp, fontFamily: regular),
                          ),
                          SizedBox(
                            width: 34.w,
                          ),
                          Text(
                            "174",
                            style:
                                TextStyle(fontSize: 14.sp, fontFamily: regular),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            left,
                            style:
                                TextStyle(fontSize: 14.sp, fontFamily: regular),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(underContractUntil,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                          )),
                      Text(underContractUntilBelow,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          )),
                    ],
                  ),
                ],
              ),
              // statics container
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: whiteColor),
                      borderRadius: BorderRadius.circular(21.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 130.w,
                            ),
                            Text(
                              actualSeason,
                              style:
                                  TextStyle(fontSize: 14.sp, fontFamily: bold),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.border_color,
                              color: greenColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // gridview container
                        Container(
                          color: greyColor,
                          width: double.maxFinite,
                          height: 100.h,
                          child: GridView.count(
                            crossAxisCount: 5,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,

                            // first row of gridview
                            children: [
                              Container(
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Image.asset(
                                      icPPGround,
                                      width: 31.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      appearance,
                                      style: TextStyle(
                                          fontSize: 10.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Image.asset(
                                      icPPBall,
                                      width: 31.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      goals,
                                      style: TextStyle(
                                          fontSize: 10.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Image.asset(
                                      icPPShoes,
                                      width: 31.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      assists,
                                      style: TextStyle(
                                          fontSize: 10.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Image.asset(
                                      icPPYCard,
                                      width: 31.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      yCard,
                                      style: TextStyle(
                                          fontSize: 10.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Image.asset(
                                      icPPRCard,
                                      width: 31.w,
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      rCard,
                                      style: TextStyle(
                                          fontSize: 10.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              // second row of gridview
                              Container(
                                color: whiteColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "19",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "7",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: whiteColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 12.sp, fontFamily: regular),
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
                  SizedBox(
                    height: 15.h,
                  ),
                  // Container(
                  //   color: whiteColor,
                  //   width: double.maxFinite,
                  //   height: 50.h,
                  //   child: GridView.count(
                  //     crossAxisCount: 4,
                  //     crossAxisSpacing: 2,
                  //     mainAxisSpacing: 2,
                  //     children: [
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       // second row
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //       Container(
                  //         color: greyColor,
                  //         height: 50,
                  //         width: 50,
                  //       ),
                  //     ],
                  //   ),
                  // )
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
                        const Divider(
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
          )
        ]),
      ),
    );
  }
}
