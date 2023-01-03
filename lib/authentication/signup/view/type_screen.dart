import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/login/view/login_screen.dart';
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
                    fontSize: 15.sp,
                    fontFamily: regular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Text(
                  pleaseTellus,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: regular,
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              // these containers for candidate

              Text(
                candidate,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: regular,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/playerinfoscreen1');
                },
                child: loginContainer(
                  borderColor: whiteColor,
                  backgroudColor: whiteColor,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 8,
                        ),
                        padding: const EdgeInsets.all(8),
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                        ),
                        child: Image.asset(icPlayer),
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
                            ),
                          ),
                          Text(
                            lookingClub,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
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
                        width: 24.w,
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
                        margin: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 8,
                        ),
                        padding: const EdgeInsets.all(8),
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                        ),
                        child: Image.asset(icCoach),
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
                            ),
                          ),
                          Text(
                            lookingProject,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
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
                        width: 24.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),

              // these containers for candidate

              Text(
                employer,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: regular,
                ),
              ),
              SizedBox(
                height: 13.h,
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
                        margin: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 8,
                        ),
                        padding: const EdgeInsets.all(8),
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                        ),
                        child: Image.asset(icClub),
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
                            ),
                          ),
                          Text(
                            wantHire,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
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
                        width: 24.w,
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
                        margin: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 8,
                        ),
                        padding: const EdgeInsets.all(8),
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                          color: backgroudColor,
                          borderRadius: BorderRadius.all(Radius.circular(9)),
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
                            ),
                          ),
                          Text(
                            lookingOpportunities,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: regular,
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
                        width: 24.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    alreadyHaveAccount,
                    style: TextStyle(
                      fontFamily: regular,
                      fontSize: 14.sp,
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
