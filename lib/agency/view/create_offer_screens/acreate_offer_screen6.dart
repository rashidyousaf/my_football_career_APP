import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';

class AcreateOfferScreen6 extends StatelessWidget {
  const AcreateOfferScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: createOffer,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "6/6",
              style: TextStyle(
                  fontSize: 15.sp, fontFamily: bold, color: greenColor),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              child: Image.asset(
                icProgress5,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      pleasedesriberequest,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: regular,
                          color: titlegreyColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 30.h, bottom: 25.h, left: 20.w, right: 20.w),
                        child: Column(children: [
                          SizedBox(
                            height: 347.h,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                color: bgfieldColor,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 35.h,
                                      left: 18.w,
                                      right: 18.w,
                                      bottom: 35.h),
                                  child: TextField(
                                    maxLines: 20, //or null
                                    decoration: const InputDecoration.collapsed(
                                        hintText: "Enter your text here"),

                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: regular,
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ourButton(
                            color: greenColor,
                            title: next,
                            textColor: whiteColor,
                            onPress: () {
                              Navigator.pushNamed(
                                  context, '/acreateofferscreen7');
                            },
                          ),
                        ]))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
