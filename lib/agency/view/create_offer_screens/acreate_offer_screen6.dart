import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';
import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_container.dart';

class AcreateOfferScreen6 extends StatelessWidget {
  const AcreateOfferScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(
        title: createOffer,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
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
            CustomContainer(
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
                            color: greyColor,
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
                      CustomButton(
                        onPress: () {
                          Navigator.pushNamed(context, '/acreateofferscreen7');
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
