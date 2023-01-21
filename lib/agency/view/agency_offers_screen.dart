import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common_widgets/custom_appbar.dart';
import '../../common_widgets/custom_container.dart';
import '../../consts/consts.dart';

class AgencyOffersScreen extends StatelessWidget {
  const AgencyOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: manageYourOffers,
        icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(
              height: 76.h,
            ),
            //first portion
            CustomContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13.w, top: 19.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 26.w,
                              height: 24.h,
                              child: Image.asset(
                                icOShirt,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                            SizedBox(
                              width: 160.w,
                              child: Text(
                                attMidfielder,
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
                                bundesliga,
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
                                year,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                      ],
                    ),
                  ),

                  // this column for flags
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          width: 96.w,
                          height: 43.h,
                          child: Text(
                            "7 Candidates",
                            style: TextStyle(
                              color: whiteColor,
                              fontFamily: regular,
                              fontSize: 12.sp,
                            ),
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 60.w,
                        height: 60.h,
                        child: Image.asset(
                          icOFlag,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        deleteOffer,
                        style: TextStyle(fontSize: 12.sp, color: redColor),
                      )
                    ],
                  )
                ],
              ),
            ),
            //second portion
            SizedBox(
              height: 32.h,
            ),
            CustomContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13.w, top: 19.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 26.w,
                              height: 24.h,
                              child: Image.asset(
                                icOShirt,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                            SizedBox(
                              width: 160.w,
                              child: Text(
                                attMidfielder,
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
                                bundesliga,
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
                                year,
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                      ],
                    ),
                  ),

                  // this column for flags
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          width: 96.w,
                          height: 43.h,
                          child: Text(
                            "7 Candidates",
                            style: TextStyle(
                              color: whiteColor,
                              fontFamily: regular,
                              fontSize: 12.sp,
                            ),
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 60.w,
                        height: 60.h,
                        child: Image.asset(
                          icOFlag,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        deleteOffer,
                        style: TextStyle(fontSize: 12.sp, color: redColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.pushNamed(context, '/acreateofferscreen1');
        },
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          color: whiteColor,
        ),
      ),
    );
  }
}
