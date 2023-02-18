import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/authentication/signup/view/type_screen/components/type_widget.dart';
import 'package:my_football_career/common_widgets/applogo_widget.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/consts/consts.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: type,
        subtitle: 'Select you type',
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
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
              Text(
                welcomeMyFootbalCareer,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: regular,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                pleaseTellus,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: regular,
                  color: blackTitle,
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              // these containers for candidate

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  candidate,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: regular,
                    color: blackTitle,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              const TypeWidget(
                img: icPlayer,
                title: player,
                subtitle: lookingClub,
                onTap: '/playerinfoscreen1',
              ),

              SizedBox(
                height: 15.h,
              ),
              const TypeWidget(
                img: icCoach,
                title: coach,
                subtitle: lookingProject,
                onTap: '/coachinfoscreen1',
              ),
              SizedBox(
                height: 15.h,
              ),

              // these containers for candidate

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  employer,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: regular,
                    color: blackTitle,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              // this portion for club
              const TypeWidget(
                  img: icClub,
                  title: club,
                  subtitle: wantHire,
                  onTap: '/clubinfoscreen1'),
              SizedBox(
                height: 15.h,
              ),

              const TypeWidget(
                img: icAgen,
                title: agent,
                subtitle: lookingOpportunities,
                onTap: '/agencyinfoscreen1',
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
                      Navigator.pushNamed(context, '/wrapper');
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
          ),
        )
      ]),
    );
  }
}
