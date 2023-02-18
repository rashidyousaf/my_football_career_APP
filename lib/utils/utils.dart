import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_football_career/consts/colors.dart';

class Utils {
  void toastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: redColor,
      textColor: whiteColor,
      fontSize: 16.sp,
    );
  }
}
