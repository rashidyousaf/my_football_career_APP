import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/consts/consts.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: bgWidget(
          context: context,
          title: type,
          subtitle: "Select your type",
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Center(
                  child: SizedBox(
                      width: 109.w, height: 125.h, child: appLogoWidget())),
              SizedBox(
                height: 21.h,
              ),
              Center(
                child: Text(
                  welcomeMyFootbalCareer,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: regular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Text(
                  pleaseTellus,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: regular,
                    color: blackTitle,
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              // these containers for candidate

              Text(
                candidate,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: regular,
                  color: blackTitle,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/customappbar');
                },
                child: loginContainer(
                  borderColor: whiteColor,
                  backgroudColor: whiteColor,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 8.h,
                          bottom: 8.h,
                          left: 8.w,
                        ),
                        padding: EdgeInsets.all(8.r),
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9.r)),
                        ),
                        child: Image.asset(
                          icPlayer,
                          width: 42.w,
                          height: 43.h,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: regular,
                              color: blackTitle,
                            ),
                          ),
                          Text(
                            lookingClub,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
                              color: blacksubTitle,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        icArrow1,
                        width: 29.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        width: 13.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/coachinfoscreen1');
                },
                child: loginContainer(
                  borderColor: whiteColor,
                  backgroudColor: whiteColor,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 8.h,
                          bottom: 8.h,
                          left: 8.w,
                        ),
                        padding: EdgeInsets.all(8.r),
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9.r)),
                        ),
                        child: Image.asset(
                          icCoach,
                          width: 33.w,
                          height: 35.h,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coach,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: regular,
                              color: blackTitle,
                            ),
                          ),
                          Text(
                            lookingProject,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: regular,
                                color: blacksubTitle),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        icArrow1,
                        width: 29.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        width: 13.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),

              // these containers for candidate

              Text(
                employer,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: regular,
                  color: blackTitle,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              // this portion for club
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/clubinfoscreen1');
                },
                child: loginContainer(
                  borderColor: whiteColor,
                  backgroudColor: whiteColor,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 8.h,
                          bottom: 8.h,
                          left: 8.w,
                        ),
                        padding: EdgeInsets.all(8.r),
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9.r)),
                        ),
                        child: Image.asset(
                          icClub,
                          width: 35.w,
                          height: 33.h,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            club,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: regular,
                              color: blackTitle,
                            ),
                          ),
                          Text(
                            wantHire,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
                              color: blacksubTitle,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        icArrow1,
                        width: 29.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        width: 13.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/agencyinfoscreen1');
                },
                child: loginContainer(
                  borderColor: whiteColor,
                  backgroudColor: whiteColor,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 8.h,
                          bottom: 8.h,
                          left: 8.w,
                        ),
                        padding: EdgeInsets.all(8.r),
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9.r)),
                        ),
                        child: Image.asset(icAgen),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            agent,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: regular,
                              color: blackTitle,
                            ),
                          ),
                          Text(
                            lookingOpportunities,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
                              color: blacksubTitle,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        icArrow1,
                        width: 29.w,
                        height: 29.h,
                      ),
                      SizedBox(
                        width: 13.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    alreadyHaveAccount,
                    style: TextStyle(
                      fontFamily: regular,
                      fontSize: 14.sp,
                      color: blackTitle,
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/loginscreen');
                    },
                    child: Text(
                      login,
                      style: TextStyle(
                          fontFamily: bold, fontSize: 14.sp, color: greenColor),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
