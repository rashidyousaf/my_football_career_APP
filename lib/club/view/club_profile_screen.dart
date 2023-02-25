import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/club/model/club_model.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';

import '../../common_widgets/profile_widget1.dart';
import '../../consts/consts.dart';
import '../../services/firestore_service.dart';

class ClubProfileScreen extends StatelessWidget {
  const ClubProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirestoreService fS = FirestoreService();
    return Scaffold(
      appBar: const CustomAppbar(
        show: false,
        icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: FutureBuilder(
            future: fS.getClubInfo(),
            builder: (context, data) {
              if (data.connectionState == ConnectionState.done) {
                if (data.hasData) {
                  ClubModel userdata = data.data as ClubModel;
                  return Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomContainer(
                        child: Column(children: [
                          profileWidget(
                            iconShare: Icons.share,
                            imgProfile: "${userdata.clubFlag}",
                            imgFlag: '${userdata.countryFlag}',
                            name: "${userdata.nameYourClub}",
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            "${userdata.adressYourClub}",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: titlegreyColor,
                                fontFamily: regular),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: titlegreyColor,
                                fontFamily: regular),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: greenColor,
                            border: Border.all(color: greenColor),
                            borderRadius: BorderRadius.circular(21.r),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                clubData,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: whiteColor,
                                    fontFamily: regular),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 23.h,
                      ),
                      CustomContainer(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  height: 72.h,
                                  width: 72.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Image.network(
                                    "${userdata.validYourIdendity1}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 17.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${userdata.yourRoleinClub}",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontFamily: regular,
                                          color: titlegreyColor),
                                    ),
                                    SizedBox(
                                      height: 13.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${userdata.firstName} ${userdata.lastName}",
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: semibold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Image.asset(
                                          icPPTick2,
                                          width: 12.w,
                                          height: 12.h,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    Row(
                                      children: [
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
                                              fontSize: 13.sp,
                                              fontFamily: regular),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    const Divider(
                                      thickness: 1,
                                      color: redColor,
                                    ),
                                    Row(
                                      children: [
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
                                              fontSize: 13.sp,
                                              fontFamily: regular),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              tmProfile,
                              style: TextStyle(
                                  fontSize: 12.sp, fontFamily: regular),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Image.asset(
                              icPPTransfer,
                              width: 65.w,
                              height: 28.h,
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                          ],
                        ),
                      )),
                    ],
                  );
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
