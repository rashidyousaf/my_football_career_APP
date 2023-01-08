import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/bgwidget.dart';
import '../../common_widgets/login_container.dart';
import '../../consts/consts.dart';

class AgencyMessagesScreen extends StatelessWidget {
  const AgencyMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgWidget(
        title: 'Messages',
        context: context,
        subtitle: '',
        icon: Icons.notifications,
        child: Column(
          children: [
            SizedBox(
              height: 41.h,
            ),
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 19,
                    bottom: 19,
                  ),
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 47.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          icAppLogo,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 180.w,
                                height: 23.h,
                                child: Text(
                                  centreForward,
                                  style: TextStyle(
                                      fontSize: 15.sp, fontFamily: semibold),
                                ),
                              ),
                              Text(
                                '10:20 PM',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: titlegreyColor,
                                    fontFamily: regular),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Text(
                              'Lorem ipsum is simply dummy text of the printing and typesetting industry',
                              style: TextStyle(
                                  fontSize: 10.sp, fontFamily: regular),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 11.h,
            ),
            //second chat portion
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 19,
                    bottom: 19,
                  ),
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 47.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          icPPImg,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 180.w,
                                height: 23.h,
                                child: Text(
                                  "Striker",
                                  style: TextStyle(
                                      fontSize: 15.sp, fontFamily: semibold),
                                ),
                              ),
                              Text(
                                '10:20 PM',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: titlegreyColor,
                                    fontFamily: regular),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Text(
                              'Lorem ipsum is simply dummy text of the printing and typesetting industry',
                              style: TextStyle(
                                  fontSize: 10.sp, fontFamily: regular),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            //third chat portion

            SizedBox(
              height: 11.h,
            ),
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 19,
                    bottom: 19,
                  ),
                  child: Row(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 47.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          icPPImg,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 180.w,
                                height: 23.h,
                                child: Text(
                                  rightWinger,
                                  style: TextStyle(
                                      fontSize: 15.sp, fontFamily: semibold),
                                ),
                              ),
                              Text(
                                '10:20 PM',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: titlegreyColor,
                                    fontFamily: regular),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Text(
                              'Lorem ipsum is simply dummy text of the printing and typesetting industry',
                              style: TextStyle(
                                  fontSize: 10.sp, fontFamily: regular),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
