import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';

import '../../common_widgets/login_container.dart';
import '../../common_widgets/profile_widget1.dart';
import '../../consts/consts.dart';

class AgencyProfileScreen extends StatelessWidget {
  const AgencyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        title: '',
        context: context,
        subtitle: '',
        icon: Icons.notifications,
        child: Column(
          children: [
            loginContainer(
              backgroudColor: whiteColor,
              borderColor: whiteColor,
              child: Column(children: [
                profileWidget(
                  iconShare: Icons.share,
                  imgProfile: icAPImage,
                  imgFlag: icAPFlag,
                  name: gestifute,
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  'Avenida da BAavista 1837',
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: titlegreyColor,
                      fontFamily: regular),
                ),
                Text(
                  '4100 porto',
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
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
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
                            child: Image.asset(
                              icAPImage,
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
                                agent,
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
                                    jorgeMendes,
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
                                    gestifuteMail,
                                    style: TextStyle(
                                        fontSize: 13.sp, fontFamily: regular),
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
                                    gestifuteNumber,
                                    style: TextStyle(
                                        fontSize: 13.sp, fontFamily: regular),
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
                        style: TextStyle(fontSize: 12.sp, fontFamily: regular),
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
        ));
  }
}
