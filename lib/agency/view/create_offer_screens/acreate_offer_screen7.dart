import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/consts/consts.dart';

import '../../../common_widgets/our_button.dart';

class AcreateOfferScreen7 extends StatelessWidget {
  const AcreateOfferScreen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: backgroudColor,
      backgroundColor: Colors.transparent,
      body: bgWidget(
        context: context,
        title: createOffer,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 144.h,
            ),
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.w,
                        right: 11.h,
                        top: 15.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 26.w,
                                    height: 24.h,
                                    child: Image.asset(
                                      icOCoach,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  SizedBox(
                                    width: 160.w,
                                    child: Text(
                                      centreForward,
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              // second row
                              SizedBox(
                                height: 14.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 26.w,
                                    height: 24.h,
                                    child: Image.asset(
                                      icOCup,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  SizedBox(
                                    width: 160.w,
                                    child: Text(
                                      ligaPortugal,
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              // third row
                              SizedBox(
                                height: 14.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 26.w,
                                    height: 24.h,
                                    child: Image.asset(
                                      icOSheet,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  SizedBox(
                                    width: 160.w,
                                    child: Text(
                                      professional,
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              // forth row
                              SizedBox(
                                height: 14.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 26.w,
                                    height: 24.h,
                                    child: Image.asset(
                                      icOPromise,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  SizedBox(
                                    width: 160.w,
                                    child: Text(
                                      month2,
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 21.w,
                                    height: 22.h,
                                    child: Image.asset(
                                      icOPercentage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 17.w,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 160.w,
                                        child: Text(
                                          'Offer create:10-11-2022',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: regular),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 160.w,
                                        child: Text(
                                          'Offer create:31-12-2022',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: regular),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),

                          // this column for flags
                          Column(
                            children: [
                              SizedBox(
                                width: 60.w,
                                height: 74.h,
                                child: Image.asset(
                                  icFifa,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 43.h,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 265.w,
                      child: Text(
                        'We are looking actually for a striker with a height over 187cm. Player should be abailable from 01.01.2023 and have eu passport. good stats from last season and fluent english or spansih are necessary',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: regular,
                            color: titlegreyColor),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 277.w,
                      height: 48.h,
                      child: ourButton(
                        color: greenColor,
                        title: publishOffer,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/ccreateofferscreen6');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
