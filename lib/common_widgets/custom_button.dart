import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

class CustomButton extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
  String? title;
  final VoidCallback? onPress;

  CustomButton(
      {super.key,
      this.title = "Next",
      this.onPress,
      this.bgColor = greenColor,
      this.textColor = whiteColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 45.h,
      child: ElevatedButton(
          style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(greenshadowColor),
              backgroundColor: MaterialStateProperty.all<Color>(bgColor!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      side: BorderSide(color: bgColor!)))),
          onPressed: onPress,
          child: Text(
            title!,
            style: TextStyle(
              color: textColor,
              fontSize: 15.sp,
              fontFamily: regular,
            ),
          )),
    );
  }
}
